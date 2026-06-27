from aiogram import Dispatcher
from aiogram.filters import CommandObject, CommandStart
from aiogram.types import Message

from app.modules.channels.exceptions import (
    ChannelAlreadyLinkedError,
    ChannelInvalidLinkingCodeError,
)
from app.modules.telegram.service import connect_telegram_channel, handle_telegram_text_message


def register_handlers(dispatcher: Dispatcher) -> None:
    @dispatcher.message(CommandStart())
    async def handle_start_with_linking_code(message: Message, command: CommandObject) -> None:
        linking_code = command.args
        if not linking_code:
            await message.answer("Abre el enlace de vinculacion generado desde Qypu.")
            return

        if message.chat.id is None or message.from_user is None:
            await message.answer("No pude identificar esta cuenta de Telegram.")
            return

        try:
            channel = await connect_telegram_channel(
                linking_code=linking_code,
                chat_id=message.chat.id,
                user_id=message.from_user.id,
                username=message.from_user.username,
                first_name=message.from_user.first_name,
                last_name=message.from_user.last_name,
            )
        except ChannelInvalidLinkingCodeError:
            await message.answer("Este enlace de vinculacion no existe o ya no es valido.")
            return
        except ChannelAlreadyLinkedError:
            await message.answer("Este canal ya fue vinculado con otra cuenta de Telegram.")
            return

        await message.answer(
            f"Listo. Tu cuenta de Telegram quedo vinculada al canal {channel.name}.\n\n"
            "Soy el almacenero de Qypu. Puedes registrar productos, mover stock y hacer consultas."
        )

    @dispatcher.message()
    async def handle_regular_message(message: Message) -> None:
        if message.chat.id is None or message.text is None:
            await message.answer("Por ahora solo puedo procesar mensajes de texto.")
            return

        response = await handle_telegram_text_message(chat_id=message.chat.id, text=message.text)
        await message.answer(response)
