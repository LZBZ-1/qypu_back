BEGIN;

INSERT INTO
  states (id, name)
VALUES
  (
    '6bfa9890-f2fd-4eca-819f-567a04dc22fc',
    'CALLAO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '8b915083-d93a-4920-99c7-2384f50b8271',
    '6bfa9890-f2fd-4eca-819f-567a04dc22fc',
    'CALLAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c8ebb807-0394-4888-8629-604188f3774b',
    '8b915083-d93a-4920-99c7-2384f50b8271',
    'BELLAVISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35cbb67a-c9e9-4839-81c0-934b0776241a',
    '8b915083-d93a-4920-99c7-2384f50b8271',
    'CALLAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0318ff52-17ca-4102-afe4-fb9bf38e6b14',
    '8b915083-d93a-4920-99c7-2384f50b8271',
    'CARMEN DE LA LEGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '82356ea4-67bf-4e76-b750-6eb9ea8acea2',
    '8b915083-d93a-4920-99c7-2384f50b8271',
    'LA PERLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f10da992-35f2-4f16-9e33-45597073410d',
    '8b915083-d93a-4920-99c7-2384f50b8271',
    'LA PUNTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4579ddb2-1723-4a72-9dc6-6d53373d9cda',
    '8b915083-d93a-4920-99c7-2384f50b8271',
    'MI PERU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '98342c64-d4ad-4873-830e-caa84c228614',
    '8b915083-d93a-4920-99c7-2384f50b8271',
    'VENTANILLA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'LIMA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'CANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '379a6171-bf37-446c-a13c-e333f9032613',
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    'ARAHUAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '45d48326-2c69-46c9-bda2-15f786234e8d',
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    'CANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '26942dd5-09f8-49bb-97ed-3f9e985a7fad',
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    'HUAMANTANGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2eeea971-c75c-474b-839c-30538a9bb83b',
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    'HUAROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2dff353f-a494-4980-ae24-e90018000707',
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    'LACHAQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b3d43cb8-ccab-4f34-871c-25244681a4a6',
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    'SAN BUENAVENTURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '871d7d48-6446-40c5-a7a1-133de8a25424',
    'aad8a286-d0d4-4681-979b-66a7e366655b',
    'SANTA ROSA DE QUIVES'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'CAÑETE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fcfcb27d-174f-4843-a6d6-f76a6bd9d9d0',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'ASIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4089ff8e-5d99-45ad-9579-afa66093c353',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'CALANGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e234a67-ba90-45cc-878c-45d421faacc0',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'CERRO AZUL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dc97c0fd-25b0-4d62-bc0b-74bdcd1cb19c',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'CHILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7a7f02d2-7e7e-4677-8fd5-940fd5586667',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'COAYLLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a4a1a0cf-b7b4-483b-9c00-a68b5feee57f',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'IMPERIAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0f8fe57c-978a-43d8-a0e9-39cbebc6f66a',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'LUNAHUANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e45923df-3baa-4266-b388-e13a2f68b139',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'MALA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b31b1c00-0621-4476-8324-ea14d485fa30',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'NUEVO IMPERIAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f12c2a60-2634-4c8f-89ea-5988b28580ec',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'PACARAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b956acc-80a9-4f94-95bd-516ae08347e9',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'QUILMANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '64b1b5ae-702b-4485-8199-b596ac415f39',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'SAN ANTONIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fbe452e5-4c45-4912-a468-c8070a948240',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'SAN LUIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '87014426-27ac-4bbb-82ca-724bde18d62c',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'SAN VICENTE DE CAÑETE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7eca75de-17ac-4449-95fb-abf3bf72801e',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'SANTA CRUZ DE FLORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8dfa7d76-c74d-4961-88a1-fe5ac930c0c5',
    '4080bf16-ad21-4bd2-b034-cc7c378ac1c9',
    'ZUÑIGA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'HUAROCHIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69c06f7b-0a7d-49ba-9e00-853081eb38ef',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'ANTIOQUIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '358aa250-21c1-452d-a3ff-e7891cfb3386',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'CALLAHUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e24ee202-2f6a-4546-8a09-ca4c0a884743',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'CARAMPOMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c35e2432-4f3c-4648-9580-f846f5a38191',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'CHICLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '73cee243-afdb-4444-936b-a93314b9d3b1',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'CUENCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b1fc3edd-cb9a-4e86-82a8-5b54a8814fce',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'HUACHUPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c9234901-15b7-4a49-8fef-cd584c2d82bd',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'HUANZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4c15dac7-395a-4399-b852-c32a87d81c08',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'HUAROCHIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5f6a7d9d-f587-47ed-8a03-634d74ebeaa3',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'LAHUAYTAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '21021665-80da-4a7a-bec0-63e55312b9b8',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'LANGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f1ed0d2b-6bee-482a-b75a-82a158a8cf05',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'LARAOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6dd6553d-72f8-43aa-97a7-a4474a1ebb35',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'MARIATANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fa5fb0c9-6d3c-42fe-a473-869b5c36f782',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'MATUCANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'de34f565-e558-4994-9dd5-bfba047a8c83',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'RICARDO PALMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '78e95642-1d86-4576-b86f-dc0741bdee8f',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN ANDRES DE TUPICOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '55d0ed2f-b5eb-46bf-bb54-ce52c1b72123',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN ANTONIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7c5ed817-131d-4545-bf5f-6b6dcf694178',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN BARTOLOME'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6937d030-661d-418a-9dcc-87cf64912ce9',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN DAMIAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f036b569-f1de-417e-a442-2588dea4a979',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN JUAN DE IRIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd2ab093-3a1a-456d-ab5c-a33cc81b48a8',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN JUAN DE TANTARANCHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '82b91b75-f543-4338-a2b9-32df45a4676a',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN LORENZO DE QUINTI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '224eba7f-58f8-4d16-9a39-4f2d0d2e59b1',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN MATEO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0ef61ade-2589-4ee1-b9cf-d5a6edc75e60',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN MATEO DE OTAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9770c262-1d0b-42fa-b36d-ca844434a872',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN PEDRO DE CASTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6f2c2ea0-2f76-47c3-bc78-5f78fd911bd4',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SAN PEDRO DE HUANCAYRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d351f29-9574-4922-9e15-fb7fb546af28',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SANGALLAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ef5106f0-f5ad-42a7-a412-fd8b94c9244f',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SANTA CRUZ DE COCACHACRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0b0a5a60-743b-40da-85e6-9280616a70d6',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SANTA EULALIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '05843dd8-cf43-4ef7-9c1f-ab9e2ecbbf8b',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SANTIAGO DE ANCHUCAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0338339b-cc5f-43ac-9f81-e7e7f3374029',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SANTIAGO DE TUNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '71aa13ba-245c-4fe1-b20f-9cd15d2d3181',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SANTO DOMINGO DE LOS OLLEROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4fcb7aa3-5f8f-4874-b03d-fbfe31fe57ea',
    '76b61335-0daf-4a76-ae0d-a0169004c379',
    'SURCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'LIMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fb53c752-9aed-4f3a-9166-7bae0992c8e7',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'ANCON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6eb57d15-d7bd-4490-93c4-329b4cb64ddf',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'ATE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0eb66359-bb2f-49ed-903c-b64f44767338',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'BARRANCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5f210b7-f665-4369-a905-9b86584bb168',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'BREÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93bed6df-f39a-4476-8bd0-68c706f3739c',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'CARABAYLLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8fc22a03-cd9a-44c6-9f58-aa09299c1610',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'CHACLACAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd18ea0fb-74e0-4af4-88e7-824cd1f58a29',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'CHORRILLOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1c8cf4d2-ffd9-48b9-8e27-bd5d5029d0fb',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'CIENEGUILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dad71817-f756-4d53-b234-d26a65e846bf',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'COMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5a283b0a-ba6a-4121-b87c-6e9e1cedcc93',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'EL AGUSTINO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38f0f66e-6c67-4d91-8499-7a167a0cfb12',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'INDEPENDENCIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2d5eece2-d2ee-47e6-b68d-f66c3b90d061',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'JESUS MARIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a0ca697a-aa8f-486a-93a4-a48c0ada39bd',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'LA MOLINA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4fdf2f90-e4aa-4a05-bea0-7b6f6f40adf3',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'LA VICTORIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ebb26f5e-edf3-4e39-87d1-010c562016f0',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'LIMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7bb56907-7029-425c-9c60-9b81b97cfd0a',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'LINCE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e89fd1eb-6788-45a5-bc05-86c4ccc53cec',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'LOS OLIVOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1fdffdc6-93cc-4272-924d-673300966c97',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'LURIGANCHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e4230f96-94f4-4dcd-9b8b-e9f58b1550f6',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'LURIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '75e45ea4-ddef-432f-8529-f0ed1d924848',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'MAGDALENA DEL MAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '33ff982e-442f-4859-b8e0-afdaf63e70c7',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'MIRAFLORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3217b005-e5a5-42b8-9314-0cd08fcaa8bc',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'PACHACAMAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a4e9df56-c40d-42ad-a718-03321fae48cc',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'PUCUSANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '64ed69ae-5a3f-45e1-90ce-46fb2eee5f61',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'PUEBLO LIBRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6a33c55-ab44-40d1-8e51-1c27aa6c4449',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'PUENTE PIEDRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '115e6816-315c-484b-9283-ad66967aecca',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'PUNTA HERMOSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ef680656-ba4e-47c6-a4fb-a25285e1c1de',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'PUNTA NEGRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '337dfd70-99d2-450f-956f-bd3a9c0a4772',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'RIMAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2e17558-3a72-42e5-b58a-8f7ab6cfff7a',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN BARTOLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'de96bace-4ab9-4ddc-b777-9d8577a95790',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN BORJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cab76068-13d4-4196-8358-ada0bd6227aa',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN ISIDRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dd6f2654-9ca3-4e49-b53f-5d5b9232af69',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN JUAN DE LURIGANCHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fb5716d2-b9a4-45ed-ade6-3a4ca5445a2f',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN JUAN DE MIRAFLORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb88785c-8c18-44d5-9b9f-6bb7ea46f433',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN LUIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '067f629c-8bec-4781-832e-4694285b815c',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN MARTIN DE PORRES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9715b411-736e-424a-af5f-bd356ae68aab',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SAN MIGUEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5238bcc3-e1df-4aaa-991a-a67b75782e59',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SANTA ANITA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8866aeae-ce4e-4a9e-bb55-33b6da09866f',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SANTA MARIA DEL MAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6068e924-2b09-4990-aae1-9b40223bc457',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f9dfb806-5ca5-4fcf-9fc3-7cb27a823d42',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SANTIAGO DE SURCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e6add919-fd5d-4ff4-9024-ebfe81c8c539',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'SURQUILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '112a114b-21c6-4265-afdb-926c181e2261',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'VILLA EL SALVADOR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7811bbef-17b1-41cf-9498-c322cd010230',
    'd22de73a-5c0e-44b5-8a6c-c04f751fd13a',
    'VILLA MARIA DEL TRIUNFO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'YAUYOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b92532ba-c012-4425-9c6d-4d3ba78776f8',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'ALÍS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c20841d8-62c4-44ff-8a59-312cd6e6e46f',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'AYAUCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb90a9dc-c0c9-483b-a952-87f18d68460e',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'AYAVIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '214f07ae-cd4b-43e0-bc36-c6170d10d8e5',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'AZANGARO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ee66d9cb-a28d-4671-b66c-c84ea48f26de',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'CACRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a9dfed63-deb1-4e51-81a2-b844d522e336',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'CARANIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2b04870b-5d03-423b-9b5c-93fdffc5c0eb',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'CATAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9e59bd20-0974-49ac-8b67-8f32af35855b',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'CHOCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '483d4624-3105-4259-bab9-33bef130dc57',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'COCHAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b2edc389-2824-4f0e-a512-b13cbdc9cee9',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'COLONIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9caba44e-e043-41c5-b55d-ffa47c09d838',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'HONGOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '029ca955-4c59-48e9-9e34-b568c3a2f317',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'HUAMPARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9caa9a9a-704b-4074-abd5-cec3099ee852',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'HUANCAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '497b3702-6a50-4663-ae0b-f5bcafd445fd',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'HUANGASCAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '863e67b6-6430-4ea5-846a-92a64d5d01a8',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'HUANTAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6f621787-726a-4ed3-854d-c26c2fff4e65',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'HUAÑEC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '121fdc2a-3eed-494f-9791-3a8d868a13c2',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'LARAOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '75cb07c1-6f9a-4c0d-a3d0-bb33ace2262d',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'LINCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f1361ec1-31be-45fe-8332-c5552468fcb3',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'MADEAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c4884e49-4609-43b7-a0d4-b94283620182',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'MIRAFLORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4335a1e7-c517-4ea5-add3-fcb17a4e3904',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'OMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b1f21dd2-65ca-45d7-a415-8cdb25059885',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'PUTINZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '300149e4-1b31-4aeb-906f-5abcb4a10dc4',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'QUINCHES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bc68e93e-72fa-48a8-96e6-456802c8a901',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'QUINOCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd393e0c1-de85-4273-b02a-149acd394934',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'SAN JOAQUIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0b34dae8-c20f-45f3-b027-542f654711c8',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'SAN PEDRO DE PILAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b9751cc6-b46f-4ca0-85c5-3d42c32a3b0c',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'TANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8dc89ba8-b597-4050-9e49-d754f6d5efe8',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'TAURIPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '59bc2dee-8af7-48ad-a11b-d6f99008c9fe',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'TOMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3149c3c5-e11c-4332-b56a-49c5a33ab8c9',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'TUPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7d69d363-f036-4cd2-807f-e165bc72020a',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'VIÑAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8ff8f221-6b99-4795-8395-8ab07f9be1a6',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'VITIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec19deb8-0ec7-4164-ab36-19af9c6d147f',
    'd3c85bbc-2c0e-4beb-987c-d890d27abbaa',
    'YAUYOS'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'AREQUIPA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'AREQUIPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1d9db856-91f7-4ffc-aa96-88358ca32612',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'ALTO SELVA ALEGRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9ac3b181-9fdb-4441-9033-8a950d4fd2e0',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'AREQUIPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'afe2f5fa-5f45-4361-97f6-4a7dbd4e3186',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'CAYMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2393451e-a5e4-47fa-b63d-c47fde215e64',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'CERRO COLORADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1f72252-bfe6-48aa-85a3-70bcde0ecde0',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'CHARACATO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5dda36df-b895-455b-982d-e143c2a66244',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'CHIGUATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6c2051e-2092-439e-9cb3-c4bee0a2e64b',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'JACOBO HUNTER'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '526c62d5-a280-4f41-942d-57af74b49c07',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'JOSE LUIS BUSTAMANTE Y RIVERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ad8909fe-9de4-4633-a42d-9dabdb5ddd4c',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'LA JOYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '732b30d7-1be2-4c6e-bfe6-788a31964fff',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'MARIANO MELGAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b6783fe4-c5fc-4600-b9f1-1cbf74f75859',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'MIRAFLORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '388b183a-287d-4eef-a304-e65fd6ed9d8c',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'MOLLEBAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b0accca-588d-40cf-9107-2a99b5dddbaf',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'PAUCARPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '78043aab-1c2b-4f21-8f95-5085dd16bc6b',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'POCSI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '51b60aa9-ee3c-414f-a5c9-952471e217c5',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'POLOBAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be10455d-6717-4886-a17e-851acf6e685d',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'QUEQUEÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '548df218-0446-4236-9e0e-51f3e38c0646',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'SABANDIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '983eab52-6b7c-4659-a08f-bfc75c9e2421',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'SACHACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab29058c-8510-420f-9c76-604ad79fa17f',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'SAN JUAN DE SIGUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b971a628-eb92-4b82-b7da-3b03b7ae65fe',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'SAN JUAN DE TARUCANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '405ab8a9-470e-493f-a5ea-ea77a9e59d8d',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'SANTA ISABEL DE SIGUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '04de11e9-10ef-4f1a-898e-0ce0add3c816',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'SANTA RITA DE SIGUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6e975d04-9321-4864-b601-eab182c4f22f',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'SOCABAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '19b36e9b-5dee-48e6-a132-e4830bccd786',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'TIABAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c0973d23-c8c3-4d4b-aed1-dfd124c5d376',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'UCHUMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '925363e8-9d5b-4133-b523-87bd1bd6390f',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'VITOR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '78c2b025-c65e-4fda-bd2e-22a2a11fd815',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'YANAHUARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '43e0fb89-96c7-4af9-a179-69d2534be6a7',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'YARABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1c1d3649-d58d-4735-b78d-e3c74055d06f',
    '77c9c550-95ce-4453-acce-c56959e0ee4a',
    'YURA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '785859ca-508c-44af-aded-72dfc548a037',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'CAMANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dc38c456-942d-4d96-ab98-de9b5e96fa9d',
    '785859ca-508c-44af-aded-72dfc548a037',
    'CAMANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1a3befd4-6dd2-4977-9243-446b9abc1722',
    '785859ca-508c-44af-aded-72dfc548a037',
    'JOSE MARIA QUIMPER'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '75c678c6-9ff5-45fc-9564-3f9e83195a83',
    '785859ca-508c-44af-aded-72dfc548a037',
    'MARIANO NICOLAS VALCARCEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2731e6fd-db31-410a-af73-07ff22d3f57e',
    '785859ca-508c-44af-aded-72dfc548a037',
    'MARISCAL CACERES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '235c16f8-ce44-46f4-9ff0-2dbde490eca1',
    '785859ca-508c-44af-aded-72dfc548a037',
    'NICOLAS DE PIEROLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'da9127f1-dea6-4ee9-9331-ba193521cb4a',
    '785859ca-508c-44af-aded-72dfc548a037',
    'OCOÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a0a8ed37-86d2-471b-afc7-fe6a7ca1ae65',
    '785859ca-508c-44af-aded-72dfc548a037',
    'QUILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3ccac6fe-f1a3-40f6-aad0-d6335de91d09',
    '785859ca-508c-44af-aded-72dfc548a037',
    'SAMUEL PASTOR'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'CARAVELI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fd777ac6-fc8b-4d60-a895-41f2e709d8f5',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'ACARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '969c55d5-5866-4a84-b0e3-49276f109f06',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'ATICO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '68d905e8-22b2-4e86-a821-036d38e8c464',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'ATIQUIPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dcffe70e-91fc-43eb-8437-571f5d091859',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'BELLA UNION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '44bc6997-05bd-413f-b0dd-94bb1e50d14c',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'CAHUACHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7178f4a1-c6eb-4295-80f8-0b9d9d4dae6a',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'CARAVELI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e8101a36-323e-4f9b-bb17-3ed73b202a3c',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'CHALA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8d136403-56e5-4bb8-a5ec-d9f3d62c674e',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'CHAPARRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '30182cd3-96af-4a05-87e2-35136bcd46c6',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'HUANUHUANU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b72579ce-fb43-4814-b0ab-48985bcf8b5d',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'JAQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f23ba2f1-2608-4985-8b2c-0c6d5a770dbc',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'LOMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'df6fecb6-4272-44f6-aef3-b018e7aecbfb',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'QUICACHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12d96a8e-0a3b-46c2-b5e5-e9e16005a970',
    '15e20f8a-f3c0-4a3c-9a3e-1397e5dd495a',
    'YAUCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'CASTILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5448f439-034d-42c3-9d70-530c549317da',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'ANDAGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b967391-b1e9-469f-91da-1adafa167666',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'APLAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '37d5ba5f-2d5a-434b-a217-08327958601a',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'AYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9a7e7873-5702-4cce-b936-b9581d7ed2a5',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'CHACHAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a749970e-e9b3-4287-8bcd-ba07347a499c',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'CHILCAYMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c8420f45-385d-4d95-b84d-a7d1acf0829c',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'CHOCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d0bf599-ffe2-402a-88ff-0f3b79974784',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'HUANCARQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '68273b03-7b8a-4ae0-8d47-88b8e9ad53e3',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'MACHAGUAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c2f033ca-295e-401a-b3f1-1b5b3131f4e5',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'ORCOPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9ab6c3c9-d57e-4d89-aad6-669a24f0f3f3',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'PAMPACOLCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0a81cf98-9827-4870-b088-e349f3c74cf0',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'TIPAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb48926a-3236-4d59-b183-323b65e196a2',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'UÑON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dc4d5628-8dce-4c54-976b-d5ba3a401183',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'URACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2acf953d-f685-4886-a54d-82379c95ded8',
    'ce4b9ee5-fd6f-4e19-ab75-e2c22c4abd1d',
    'VIRACO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'CAYLLOMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7264e472-8d91-404f-9f62-6c656990dd03',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'ACHOMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8c45296b-117d-4d6d-92bc-2ebcfd6cb390',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'CABANACONDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c31ac252-288c-4040-9100-ebcf96ed9f6f',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'CALLALLI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b74feca0-6345-4cdf-b574-be5ea7978c22',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'CAYLLOMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4abfa404-ab38-4dcc-9996-64ffdbba3c4b',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'CHIVAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf4848d9-6731-489d-85e4-42711fe61da7',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'COPORAQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '511f73d4-2cda-4e6d-aee7-7b0dcd65e99b',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'HUAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dbd1dd19-e3cf-446b-8359-356ca282fe78',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'HUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '37b5fa6b-6512-4f2b-8ce9-88cc43330ded',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'ICHUPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '68f2fa8b-f832-4e26-b72c-09a886a2280a',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'LARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5e40c0d9-aee0-4ef5-8dfc-1b03d08c65c7',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'LLUTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4f36934b-07e3-4e4f-977f-695a54a1cbb6',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'MACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1c78d2b8-d1e3-4a91-b91d-7ce6d9558c46',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'MADRIGAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '33ad519c-9b29-4a5a-9751-75586a21b64b',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'MAJES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fa71c3d8-fca9-451b-961d-a58cd0285695',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'SAN ANTONIO DE CHUCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6b20d906-3d84-44e1-b1df-7b8fd3ecc550',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'SIBAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7f4a022e-6535-4461-b126-b34035b51832',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'TAPAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3cd289be-97a7-4458-bfce-c6bd93f56194',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'TISCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cbd7ccaf-9c35-4ef8-9c69-db5578ae6296',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'TUTI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '585c4a22-dd57-47ee-9bd8-2ed8c39b4252',
    '0a8c96f5-ca43-482e-a584-02b701943b08',
    'YANQUE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'CONDESUYOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be09ce81-695d-4b41-ac79-b8dae6bebfff',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'ANDARAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c5776e9b-4f3b-42e3-9e8b-b7f7be451d9a',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'CAYARANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5ef2dd77-9a12-4695-a4a1-2f8d8e7c1ced',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'CHICHAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '119f0167-ebeb-47ce-831b-02c8d0266b76',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'CHUQUIBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7eae6f6d-c333-489b-85ae-53cc6115f0bd',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'IRAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7830fb38-367a-46b9-97a9-dc040c94354a',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'RIO GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1f27b99-dc00-4189-b54f-f6dff19c2230',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'SALAMANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fb609715-bfba-45f6-8c58-ae25f99cc6a3',
    'f081a8fc-6490-4b89-8ff9-08f914279ee2',
    'YANAQUIHUA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'be23f3ee-1b3c-4f9c-befd-6aca6d03f2fd',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'ISLAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0cf1255c-9799-44e8-a68c-c19759a0060e',
    'be23f3ee-1b3c-4f9c-befd-6aca6d03f2fd',
    'COCACHACRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e3653b13-75e1-4b5c-b5d8-3271140f370f',
    'be23f3ee-1b3c-4f9c-befd-6aca6d03f2fd',
    'DEAN VALDIVIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e248015-38bc-4fd6-9ad0-5a8f229282a0',
    'be23f3ee-1b3c-4f9c-befd-6aca6d03f2fd',
    'ISLAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b5901329-0685-4a42-83a7-434e8a2f8571',
    'be23f3ee-1b3c-4f9c-befd-6aca6d03f2fd',
    'MEJIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6b8d58f7-5501-45ac-8121-350ada71b542',
    'be23f3ee-1b3c-4f9c-befd-6aca6d03f2fd',
    'MOLLENDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6e6c4cd2-ef9d-488b-ae1b-149f2bc393c0',
    'be23f3ee-1b3c-4f9c-befd-6aca6d03f2fd',
    'PUNTA DE BOMBON'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    '9c370eb0-869b-4791-8ed0-7256972f2c6e',
    'LA UNION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '974b1c0c-fd17-4a05-bcb1-0c76cb72222d',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'ALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '60c86bc1-41d8-4844-8c6e-559071e8839b',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'CHARCANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8ae9524f-c540-4f50-91fa-9f4282d2839d',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'COTAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f64a32c5-00af-4400-aac1-86de38f5be65',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'HUAYNACOTAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ed8bfab3-56ad-45ab-b38e-c44660de6479',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'PAMPAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '15dc9977-82b7-4d5a-82be-d42a733d475e',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'PUYCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '885b5a06-a57e-4caa-99c6-4ca24136851b',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'QUECHUALLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a9478323-8b51-4406-b6ca-a3a262e4cb82',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'SAYLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12ac1308-8c6a-4917-8777-1fed3bdfdead',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'TAURIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '613d9fc8-5268-473d-b72b-34682e6aa2ad',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'TOMEPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18ece06a-77c0-458a-9df9-8c7f9b7862ef',
    '986a9b37-9e5b-4219-aade-49517e1e2c36',
    'TORO'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'ee9997fd-08cd-4b37-9403-b0d431ecbeaf',
    'MOQUEGUA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'ee9997fd-08cd-4b37-9403-b0d431ecbeaf',
    'GENERAL SANCHEZ CERRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1eac3e20-4f7f-4742-8c7a-211d99339cda',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'COALAQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '03ea2a0d-6208-4dfa-b61a-be009ef70faa',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'LA CAPILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '67b8fdbe-f665-4b06-9014-22be929a3b6f',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'MATALAQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9cf9f2a9-9600-40bc-9d43-54c2087da7ed',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'OMATE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '799ff041-26ee-4fd0-b5c6-337482c7b6d7',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'PUQUINA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b405bb7f-62ec-47f5-91ca-a6e8c82ca406',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'UBINAS'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'LA LIBERTAD'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'ASCOPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '02ab3b9f-1014-4b67-ab2f-05452440afa4',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'ASCOPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bf27d558-6417-4860-8f56-3c04da9f9956',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'CASA GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b298d0c-a204-46fd-a26d-5256c7c6e222',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'CHICAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e9e73467-b9b0-4b89-8cad-7df0cc6b9e44',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'CHOCOPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8304b8a4-b364-4dbb-a4ef-418ebf6b7e74',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'MAGDALENA DE CAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a17985a4-fa1b-462c-9567-f5f838b5f9dc',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'PAIJAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd79677ff-71b1-4694-8f2f-fefbdd42c709',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'RAZURI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '94147f20-5f63-4a55-89e1-b2eb8dc1af16',
    'ed32ebce-6e42-4ff7-8c99-8cddb50f5dd7',
    'SANTIAGO DE CAO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9976e745-8ba9-4dc8-828a-12a1e576f237',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'BOLIVAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '678bceac-5368-47bc-b85b-f7469c09d285',
    '9976e745-8ba9-4dc8-828a-12a1e576f237',
    'BAMBAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '37e9ce0e-91c8-409e-85e7-866c86713c3d',
    '9976e745-8ba9-4dc8-828a-12a1e576f237',
    'BOLIVAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '00577be4-3723-4e70-8470-6a4bf962053d',
    '9976e745-8ba9-4dc8-828a-12a1e576f237',
    'CONDORMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '00eaf147-0677-428b-902a-3b3b3c909ea6',
    '9976e745-8ba9-4dc8-828a-12a1e576f237',
    'LONGOTEA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a8a8548a-2226-464f-a574-b9b2d7b81b13',
    '9976e745-8ba9-4dc8-828a-12a1e576f237',
    'UCHUMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ba8c47fe-5d8e-42e5-9bc3-0e96a0f586ca',
    '9976e745-8ba9-4dc8-828a-12a1e576f237',
    'UCUNCHA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '1d2364af-6d15-45d6-9a76-ee8a9c618548',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'CHEPEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cb4816eb-0e8d-4abd-a4cf-cd11134635bc',
    '1d2364af-6d15-45d6-9a76-ee8a9c618548',
    'CHEPEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '73bb2fee-2d5a-4852-b5c8-aacdbc511fd3',
    '1d2364af-6d15-45d6-9a76-ee8a9c618548',
    'PACANGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ff77f12b-e404-40b2-a4ce-bc5c70c9cd2c',
    '1d2364af-6d15-45d6-9a76-ee8a9c618548',
    'PUEBLO NUEVO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b8f8044c-acb8-429e-9caf-206f3c8f07a9',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'GRAN CHIMU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd9627778-6861-47dc-9d23-c008929a1163',
    'b8f8044c-acb8-429e-9caf-206f3c8f07a9',
    'CASCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dd57dee1-f9e7-4436-90a4-66ae6d7da377',
    'b8f8044c-acb8-429e-9caf-206f3c8f07a9',
    'LUCMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '09a765b6-03e7-42a2-a334-d61e3278c1a1',
    'b8f8044c-acb8-429e-9caf-206f3c8f07a9',
    'MARMOT'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '262d8e82-665a-4f82-a4ae-61f1a34d969a',
    'b8f8044c-acb8-429e-9caf-206f3c8f07a9',
    'SAYAPULLO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f47731e7-7cf3-4070-af8a-ba8e736420f1',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'JULCAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f188cd41-c8a3-47f7-a09f-5cd481fdfb38',
    'f47731e7-7cf3-4070-af8a-ba8e736420f1',
    'CALAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a43041c9-8a51-4a2f-bdf9-1a2f8e6a3794',
    'f47731e7-7cf3-4070-af8a-ba8e736420f1',
    'CARABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '468ebbed-f77f-4e33-985e-ecb5d220bff2',
    'f47731e7-7cf3-4070-af8a-ba8e736420f1',
    'HUASO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fa2fa677-3cfd-4d38-82d6-00c961c3f6ce',
    'f47731e7-7cf3-4070-af8a-ba8e736420f1',
    'JULCAN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'OTUZCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c9998150-3ff9-4454-881b-c4a05813c0f3',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'AGALLPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e8fd5ecd-e63c-4091-abc8-9c31fb0b5050',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'CHARAT'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36bef655-cc80-4ca6-a1d6-4c2972f154d2',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'HUARANCHAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8c065e63-ae57-409c-af09-3dc60fb29e4f',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'LA CUESTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93e94826-4365-45f1-aece-9f0b8d122408',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'MACHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '97c81e4f-2480-4b22-8344-c0c248f3b4d1',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'OTUZCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b4b28485-67c8-4693-9b3a-d17880509354',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'PARANDAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f3dc5add-324e-4474-b6fa-74405fcadcb7',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'SALPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8af3c74d-15b2-4d75-bff5-e2bbdcdc035a',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'SINSICAP'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f368d03c-f0e1-45bf-8f16-79baaaaa691f',
    '266de59d-c700-4a6c-aa0f-324dc2722f76',
    'USQUIL'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '31b28316-9459-49a2-a4aa-920ef7c35230',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'PACASMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7795ed49-7111-453c-bbad-4aa794b2d390',
    '31b28316-9459-49a2-a4aa-920ef7c35230',
    'GUADALUPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a601e203-2294-47f4-a55b-478be6f3ebf1',
    '31b28316-9459-49a2-a4aa-920ef7c35230',
    'JEQUETEPEQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c95de76f-c25c-4173-8f61-a95240652d69',
    '31b28316-9459-49a2-a4aa-920ef7c35230',
    'PACASMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6f00eb3e-c447-49ad-9881-fa7758686436',
    '31b28316-9459-49a2-a4aa-920ef7c35230',
    'SAN JOSE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ce78d40b-daa9-430c-8c63-368396d04430',
    '31b28316-9459-49a2-a4aa-920ef7c35230',
    'SAN PEDRO DE LLOC'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'PATAZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a8eccc7d-e1de-419d-8ca2-37de85d29fca',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'BULDIBUYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2d79c86-31b2-4619-a3b5-e237d447e025',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'CHILLIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e3c5f29-9b7b-4102-b279-6f100995b374',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'HUANCASPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b1833f4-d832-4282-88b3-7221eecc8e74',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'HUAYLILLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cdd783cd-c6f1-4e9b-81a1-d5c7c5dd09ec',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'HUAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '05ef7974-e37a-4374-a497-682f7709f7e9',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'ONGON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '70398f30-f7de-44c4-90af-d4249d342c64',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'PARCOY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f743b7ef-7bbe-4f32-ac5c-c268af86bdc1',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'PATAZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0ba143d4-f8d2-4ad9-864e-dbe69e7b3646',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'PIAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8c047153-3eef-4a1b-96ba-ebc5aea0abf2',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'SANTIAGO DE CHALLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fbbcf409-8ec8-424a-b574-2973b1d6e960',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'TAURIJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1299d6bf-33ab-4281-ae7f-52b44e3b9fa5',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'TAYABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '98453d62-d220-4c18-9f58-1a16575de55f',
    '31d6c612-6b58-4e0a-b564-f3252083b420',
    'URPAY'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'SANCHEZ CARRION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5456c9ed-f319-48db-9417-c45dd7994027',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'CHUGAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a23aa6d4-a6e1-486b-8620-cf2641cf6d90',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'COCHORCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd93a4dff-58a5-4f78-9221-1f262810ef95',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'CURGOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6997e2d9-0021-4a35-b0e7-6c290679989a',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'HUAMACHUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8d038f63-d522-4f91-a526-31096097e624',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'MARCABAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '86db07bd-43f8-4cad-a591-6364b7c29850',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'SANAGORAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '61991ebb-257b-4b10-bfdb-c873e0ace1a1',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'SARIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '011c24d1-d756-4170-abea-fe551e14c2f4',
    '839f66b1-9240-4fa7-87d8-01faa98483be',
    'SARTIMBAMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '299d10cd-7986-4d0b-9668-f574187fa090',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'SANTIAGO DE CHUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '13790e84-6f6f-4b7a-b65a-d8402645a158',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'ANGASMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e045dfc3-9992-47d2-908e-c5aec9bdc3f5',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'CACHICADAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a740de37-f763-4ad3-8332-a733f2a575ab',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'MOLLEBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f7d0e26a-4eec-43a5-90b0-094fc7bf8471',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'MOLLEPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c72cc359-7470-409e-a0ee-cefa799e97e6',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'QUIRUVILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f9afb8fe-d091-46e0-a2c7-7f5d563b313a',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'SANTA CRUZ DE CHUCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b32609b9-5e51-4b6b-bf1f-9485ced37e83',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'SANTIAGO DE CHUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab331c8b-09b2-4e94-a514-0b1f6a4dfd23',
    '299d10cd-7986-4d0b-9668-f574187fa090',
    'SITABAMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'TRUJILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aad4b795-7899-46f1-8abc-28a7a0186d06',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'EL PORVENIR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bdb00f40-afdb-48a9-9ff0-39435e90dfb3',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'FLORENCIA DE MORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '40605b06-3277-4c2b-98a9-2301e62379fa',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'HUANCHACO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f525ab0a-1215-4aea-a8cf-ac3678081d4d',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'LA ESPERANZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '636bb934-5e98-45cb-872c-34ddeb4147cb',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'LAREDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4dd5f613-7bdb-4b37-9af7-3e84d355f09a',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'MOCHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36af34af-af5f-469b-b8e2-554cce589dc3',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'POROTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fca28e67-8bc2-4919-98c8-def45e35a114',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'SALAVERRY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e0d51f68-5598-4f4c-9ce2-cbc5418d7896',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'SIMBAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9e727cf7-0334-4b35-97bc-9189035eceb0',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'TRUJILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18942d03-61d0-4c5f-ad5b-1cbc95efd168',
    '6550a60e-51a5-4693-b72b-42ca06ef5b35',
    'VICTOR LARCO HERRERA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '53fff50d-3a06-49a8-9638-0876a1d7c7a0',
    '63207ed7-a0fc-40f4-9121-a2b637a1f822',
    'VIRU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '609d116a-b8b7-43dd-83f2-97c8f8f1cfc6',
    '53fff50d-3a06-49a8-9638-0876a1d7c7a0',
    'CHAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a8d083dc-1c48-47a5-8d42-2085b513ae25',
    '53fff50d-3a06-49a8-9638-0876a1d7c7a0',
    'GUADALUPITO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab47fa0f-1297-4d7a-9007-a14b44e59617',
    '53fff50d-3a06-49a8-9638-0876a1d7c7a0',
    'VIRU'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'AYACUCHO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'dfd2be79-0936-43d9-be29-132e4943face',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'CANGALLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1a303237-e8fc-4eb2-834d-ec37620175a3',
    'dfd2be79-0936-43d9-be29-132e4943face',
    'CANGALLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0c6dc732-dae1-4037-8b2c-89e58e036c79',
    'dfd2be79-0936-43d9-be29-132e4943face',
    'CHUSCHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5ff94d87-3868-454c-816c-241c0a53b17a',
    'dfd2be79-0936-43d9-be29-132e4943face',
    'LOS MOROCHUCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a9bce5c4-8c39-4df3-9ca1-a557581ec015',
    'dfd2be79-0936-43d9-be29-132e4943face',
    'MARIA PARADO DE BELLIDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3e904f4d-cdf3-4a99-9202-85ac0fe78f64',
    'dfd2be79-0936-43d9-be29-132e4943face',
    'PARAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fdc13fbd-aaee-4f8d-aa97-c40603e2c46d',
    'dfd2be79-0936-43d9-be29-132e4943face',
    'TOTOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'HUAMANGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '37719a3a-f4b6-403b-9a65-da802462ee06',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'ACOCRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9df6ccd9-b17a-49f7-96e9-858d08d7f573',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'ACOS VINCHOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '82df49e8-b5a0-402b-9dd5-5e58b9d37ac7',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'ANDRES AVELINO CACERES DORREGARAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2f5ae0bc-7d76-42bd-95b3-0722c5943cbb',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'AYACUCHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6a44436-acbb-444a-a836-504969d997b8',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'CARMEN ALTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2bce6f5b-d711-41e9-9caf-b1d8132ec260',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'CHIARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ef507133-4b7f-464f-b698-e91972128e2e',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'JESUS NAZARENO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5f8c22a-2e63-4809-83de-563d6d820fa7',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'OCROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b52dd63-7fb3-4f7a-a248-075027f896ce',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'PACAYCASA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '53e8732b-8cb9-4048-9aee-c3266067f17e',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'QUINUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '77340a6b-62fe-4a4a-95a2-f5834395f7cf',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'SAN JOSE DE TICLLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f0202e91-5d5d-4520-9015-b35b8be70bbd',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'SAN JUAN BAUTISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0d9c9669-14c4-46e5-ba2b-7028b5480515',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'SANTIAGO DE PISCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '74404cb8-4008-446c-8dfe-f5c62c11209b',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'SOCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36b7b2d8-ce90-4451-a876-f62c9222c739',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'TAMBILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1f9fc490-6233-424c-bc8f-9e9825cca541',
    'd80a3553-cd18-4db0-8807-3b87ba1950c6',
    'VINCHOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '1adde263-5ce5-4e7c-89c6-8e061e320f52',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'HUANCA SANCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0a451f0c-73a9-4188-bdb1-0125470250ce',
    '1adde263-5ce5-4e7c-89c6-8e061e320f52',
    'CARAPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '91b1fe3b-9496-4165-b5b6-e4b779d12ad6',
    '1adde263-5ce5-4e7c-89c6-8e061e320f52',
    'SACSAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '68fc5d84-04a2-47a8-996a-ce24bcc63826',
    '1adde263-5ce5-4e7c-89c6-8e061e320f52',
    'SANCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e1f63141-f891-430f-9e28-8d1fc9f3d727',
    '1adde263-5ce5-4e7c-89c6-8e061e320f52',
    'SANTIAGO DE LUCANAMARCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'HUANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1c7d85f-7a8d-4dd7-bcd6-7c6d48879677',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'AYAHUANCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5bfeb28c-3584-4abf-8b6a-2ed772fe15f6',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'CANAYRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b1fa47b-d9f7-4292-b674-d47cfeb99399',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'CHACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5719d3a4-9dc3-48c1-a0f5-63f310426a9f',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'HUAMANGUILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3537a693-9105-4233-8dd5-719a1fbde458',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'HUANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c0881b48-31c3-4de3-b4ee-ef734515ef79',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'IGUAIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '73bb5cde-6fdd-4a2f-a8c4-523c9202e520',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'LLOCHEGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '91f0eb4c-5fe7-4d6c-8661-d375a6fa0163',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'LURICOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '61032e37-06b9-4317-b547-498791c80c76',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'PUCACOLPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2fb9f04c-83af-4e98-9d60-856d9701860d',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'PUTIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7723c4cb-f6b8-457e-abb0-3983274d876f',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'SANTILLANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '626db51c-abe4-4a7d-865f-7ba46155569d',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'SIVIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0fad7bb6-28d6-42f7-889a-f1a4848938a6',
    'c596394d-a4cc-474d-a6de-26e0a54f0735',
    'UCHURACCAY'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'LA MAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '473d3a58-3b30-43e8-8f90-586065066230',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'ANCHIHUAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '02b9880b-70af-4ab5-92f9-fdb3bc56bce3',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'ANCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e04da438-4805-42e9-b258-cae757f8ea6b',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'AYNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fd6e6219-15f2-434a-a21e-2003e70db872',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'CHILCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8ea94efd-a7a7-4639-9d55-a091a2dc5881',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'CHUNGUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '739b82bf-6b72-4528-8d93-bd102be96bd9',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'LUIS CARRANZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c22a0385-a219-4ba2-b816-fface4d35ff3',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'NINABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '25e69868-5f4c-45bf-b631-96ccbc520f9c',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'ORONCCOY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b43ca95e-cfc1-41e6-96fc-ac748c2f98e8',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'PATIBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '579980df-55d8-46c9-b532-e66dcb0b6c6b',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'RIO MAGDALENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f5998e82-5c54-4fe4-b3cf-a635d3ed9970',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'SAMUGARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c7529d65-8c99-4f84-8bb5-1473c359a6d9',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'SAN MIGUEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2ddaa79a-6606-49da-b460-264e3e3f6211',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0f25608b-bfc0-4ac5-8d96-636d693b64f2',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'TAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a08ad364-8958-4e03-aea4-a33aaec52300',
    '9ec4a1f8-e5ef-47ea-beba-eee279ee0ee6',
    'UNION PROGRESO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '792be820-0fab-4137-92d6-b19e7182c61e',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'LUCANAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6351ef6b-0e20-4ff0-a12d-26359e8fbff8',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'AUCARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72d33cd9-ca9b-4079-9c0e-90d3862106f8',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'CABANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9ce3edde-db92-4525-99fc-eac5664e0744',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'CARMEN SALCEDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c6388a74-ad52-413c-848b-c1ca273f13a7',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'CHAVIÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '51c3305f-34fa-4ac7-a241-4a852c7a0a10',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'CHIPAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e771142c-e362-469c-92fd-a5f9a986035c',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'HUAC-HUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9220e77e-21ad-4995-82f9-d707af3fbbe4',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'LARAMATE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '55a4d099-e8ff-4c16-9925-51eca3afbd81',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'LEONCIO PRADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fec20c5a-51a4-4ec4-83b5-90595695c47a',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'LLAUTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1052ac1c-b1df-4695-b5ea-8f481848609b',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'LUCANAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a490df39-98fc-4f89-b510-cf3bcc931c1f',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'OCAÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '27eb2930-b169-4792-b79c-f2cee6a45908',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'OTOCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd828bbd8-afb3-40f4-a9e4-9ed6748c6927',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'PUQUIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6a81d8d-ca19-4a98-9067-b31fa5f5c217',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SAISA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7fc340fa-2736-4465-b15e-68053bcdf385',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SAN CRISTOBAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7193d5b0-ec40-44e0-9fd0-13486467fc06',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SAN JUAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a4b7752a-31ec-4021-8808-16d1f3d8c849',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SAN PEDRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be679288-cefa-4a90-8118-4efb1cf9be3d',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SAN PEDRO DE PALCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '03638703-8e42-406a-a8da-e19354240e38',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SANCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '22388037-e143-417a-8664-82f339ac221d',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SANTA ANA DE HUAYCAHUACHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '88195a33-559a-4a79-a450-ba2e82403eaf',
    '792be820-0fab-4137-92d6-b19e7182c61e',
    'SANTA LUCIA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'PARINACOCHAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5364df6d-7562-4be8-8a0f-ac0cd86f3546',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'CHUMPI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e95cbe9e-f532-4a11-8f81-1d9c7ecc3a76',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'CORACORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '51515253-7f60-423d-bca1-95adce81fef7',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'CORONEL CASTAÑEDA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '02fe6c0b-cb9b-4571-8470-d811c8d8453e',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'PACAPAUSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7b6b21b3-461b-4429-b7c4-64d82f41125b',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'PULLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f5d75cde-3073-4674-b390-fe7e42b4a3f5',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'PUYUSCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be8beff9-a66c-4a1f-8486-6b7bed6778a4',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'SAN FRANCISCO DE RAVACAYCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'faed4d99-a563-4030-ac49-7977341831bc',
    '76f05c7a-4f59-4aba-9ba1-301c07d4887f',
    'UPAHUACHO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'PAUCAR DEL SARA SARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5a9bdeb3-8558-494d-a936-171d34e0677c',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'COLTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9fa6d8fc-413b-42b5-8aff-75f9de61da78',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'CORCULLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1e83ff3-b761-476d-83d6-a8306c11ccec',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'LAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1dc2efb-4ee6-45e1-abad-9bf12086f4b4',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'MARCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '39ea435a-e27c-47d1-a2fd-746fb0c6dea6',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'OYOLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f220ccbf-9a22-41f4-a157-00717a3f844e',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'PARARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1376ff94-f6d1-46d3-867f-f962cacf7300',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'PAUSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4f3d1422-8058-4016-b11b-f7dc677a13a1',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'SAN JAVIER DE ALPABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '24a94084-8d36-4b08-946b-18aa020df621',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'SAN JOSE DE USHUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7b00c25e-d14b-4684-8815-79969440b02a',
    '3adc4418-92bc-4127-b424-b52608d14e9e',
    'SARA SARA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'SUCRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e6d4d22d-cd76-4ea6-afe5-fd417259d5ea',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'BELEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b7da971-8d9c-4d96-8e98-7df7831dcd76',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'CHALCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a395d50a-c15b-486c-a76b-498b67c0230e',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'CHILCAYOC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c9ef53cc-e2f0-4190-b17e-08139efc9588',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'HUACAÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '650c3175-edda-46a3-9eee-c97f6370d2cc',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'MORCOLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ecb4c371-279b-4b97-8e1d-72916e6fa5ad',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'PAICO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd0f238d3-75df-458e-82b3-ff47c217c961',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'QUEROBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4818711f-28ca-4487-8c80-f9eec3a08b61',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'SAN PEDRO DE LARCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9280c618-ec22-4882-8434-19dc19a683d4',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'SAN SALVADOR DE QUIJE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '802fc358-ce60-4f23-a835-295b9a7c0e59',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'SANTIAGO DE PAUCARAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1a2c066e-6249-4574-a315-a21cb9cf8798',
    'dfffeaf6-db37-4c35-a820-6b63a338260b',
    'SORAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'VICTOR FAJARDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7fe56d55-a1bb-440b-bdf5-1e67dcb305bd',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'ALCAMENCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e448665b-ea49-4e63-bcdc-209ec58db557',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'APONGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0695372e-9c71-422f-8c93-e50422c3d242',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'ASQUIPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '84883ffb-0f01-4ad9-a9f7-519e8bbe3985',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'CANARIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fa57c8b0-3ca3-4f3c-bcf7-616ea9a05a52',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'CAYARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '156b086b-9e62-4eda-a917-eab9c5c8954a',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'COLCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd4928b9d-a242-464d-bc63-37df6fbbd888',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'HUAMANQUIQUIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7952425e-e45e-4228-8128-de9621f039c3',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'HUANCAPI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5698bb2-46ed-4dc3-bfba-7e0e9ac78c86',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'HUANCARAYLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '322d6484-fda3-4b19-a0bb-9bc397de48e4',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'HUAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4604afd9-3085-459e-aec1-1bbe038eaa09',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'SARHUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18d482ab-8ffe-43da-9114-aaeb9ccc3115',
    'fb0bfe0b-71ef-46b9-87d0-ce20d5aff280',
    'VILCANCHOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9863e691-c874-4106-b573-ccd8f716bfed',
    '9d4a1481-29b6-4e8a-9153-3b0d60993828',
    'VILCAS HUAMAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e9eb318c-dd4f-46e7-9a59-611afaac6cd7',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'ACCOMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '56f5eb95-37fc-46e0-8942-0a27d5af4a7e',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'CARHUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f2c67a34-ebf9-4efa-9c70-1be30f761a4b',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'CONCEPCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72d61469-69a2-4fb5-bd44-0fb3dbbb99c4',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'HUAMBALPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6cfd3698-3136-492e-84f6-169b3859c7cd',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'INDEPENDENCIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd11fddba-9a0c-497a-8c2c-1e6192ff94b1',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'SAURAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '77f36b94-1640-4924-bc08-429aa0464334',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'VILCAS HUAMAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '99940a12-95f4-4941-9230-a7f134456c5d',
    '9863e691-c874-4106-b573-ccd8f716bfed',
    'VISCHONGO'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'CUSCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'LA CONVENCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '880f35ab-023e-43ba-aeec-8b99fd8c84ef',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'KIMBIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd89b9840-ac90-4ee3-b8aa-962665e88e10',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'PICHARI'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'CAJAMARCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'cf0cd783-7fb3-4230-9096-0feed505e74a',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'CAJABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e85d9b33-b6f7-4c32-955b-2d7d7a4d13e6',
    'cf0cd783-7fb3-4230-9096-0feed505e74a',
    'CACHACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cca0ec44-c033-458c-a374-9df89e354227',
    'cf0cd783-7fb3-4230-9096-0feed505e74a',
    'CAJABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ed5a6238-38ca-4878-be8d-8122577abfbf',
    'cf0cd783-7fb3-4230-9096-0feed505e74a',
    'CONDEBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '07b4ef1a-7c18-4915-8221-3144b8a0e059',
    'cf0cd783-7fb3-4230-9096-0feed505e74a',
    'SITACOCHA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f6680e80-b47b-4462-9262-3f7706f51509',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'CAJAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '469f5e50-0023-4fd4-aa21-3c92d803dfca',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'ASUNCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ac371202-5fac-478b-8ae0-9915fd090aaf',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'CAJAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6616911-c704-4197-abb2-cf6cabf437b1',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'CHETILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65e9eeb2-b0ed-4ac1-9d40-6d56401f6123',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'COSPAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8903cd3d-8bf7-44c1-84fd-6d45de74d876',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'ENCAÑADA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d3c281f-0f81-47e9-b70b-868d913e0fcd',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'JESUS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c4e0443d-a996-4aca-97b1-bf516edb8acf',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'LLACANORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e4da1adb-084c-4215-a997-7e8d557eca3f',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'LOS BAÑOS DEL INCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e6ff80d2-21da-4bd6-8568-e2ad63cf84ab',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'MAGDALENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd27f22a3-44e3-4c93-8098-d31395f33f21',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'MATARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '79672175-5670-47d7-90ee-fafc828f4276',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'NAMORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aab3b8c9-2c50-467a-8b5f-1e346540fc95',
    'f6680e80-b47b-4462-9262-3f7706f51509',
    'SAN JUAN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'CELENDIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '031f6e71-b73d-4c18-acb9-af626af645bc',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'CELENDIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ff300116-a580-4e90-8164-45dc398432b4',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'CHUMUCH'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '500ad8d0-fc44-4904-8d3d-243b9c828339',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'CORTEGANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '97e8713f-85bc-48f1-88ad-6ceaebe28ce3',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'HUASMIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '80edae63-5e56-460e-892c-7ef68fe0897d',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'JORGE CHAVEZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eab9b168-9147-4240-b6d9-3f118901a1d4',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'JOSE GALVEZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c91502b1-bec7-47be-b26c-31f6b8c729fc',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'LA LIBERTAD DE PALLAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b7b93b5f-be5c-4a9c-810c-f626814679a0',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'MIGUEL IGLESIAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2ae9c751-33a9-4fc7-9235-bbe2ff566b02',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'OXAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93ed2baa-03b7-4296-b32e-4c963f35f6e4',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'SOROCHUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f2116917-4125-4721-b6c8-a574f8764e74',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'SUCRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b9461bb5-9be1-4f3d-a3e5-d1873b6d0315',
    '9e1a457f-aa52-492e-a25d-c81a43836845',
    'UTCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'CHOTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d502a7b-aa0d-4102-ae77-28f8c38fb5f2',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'ANGUIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72562f36-f25c-4c17-8943-8160a583cf2b',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'CHADIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '97b53da2-06d4-4c57-b7e0-85f0eb13b7e1',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'CHALAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '891c0686-4dcf-4298-8e15-5fa17a11ab31',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'CHIGUIRIP'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '76e40833-1aec-4b22-8b5f-d242ed205970',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'CHIMBAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eecf08c6-b0bf-47fa-89bb-99d6a7451807',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'CHOROPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e6dcfae5-729b-468d-8e05-9e9c03e2f32e',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'CHOTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b9cb40ef-d936-46b3-87ff-17f54b5dfd98',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'COCHABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8bfa703e-6e40-47ac-95c5-68208e45e59d',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'CONCHAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd38fd45c-536f-475d-9161-fbfc11b50509',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'HUAMBOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '16f25d67-d173-4735-84ee-fc552c457a67',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'LAJAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8f3a2db1-863e-4dd0-9499-f10e2da1c8e1',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'LLAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '88c1ae4a-b34e-460d-9370-d90bc8b43b6d',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'MIRACOSTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f8015ac0-dc24-4d5e-8f9b-9fdd38f18371',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'PACCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a44e1ac2-4352-421a-a64e-05e2c54995c5',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'PION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ba48a4e9-219a-4d0b-b006-07bcd10f0452',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'QUEROCOTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b66cd39b-d79b-43e8-9104-3a9a10dc7ad4',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'SAN JUAN DE LICUPIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2400090d-1b97-403a-98c3-296097ae2254',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'TACABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fc435bc3-f459-4bc9-9142-4ad10715996d',
    '8c6fb434-bafb-4edb-90c9-99220b8b1a83',
    'TOCMOCHE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'CONTUMAZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5130f731-718c-4675-8318-0de139548512',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'CHILETE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '42d59b39-7b95-4005-b922-5b846204f21e',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'CONTUMAZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '089b472d-c0fe-456c-9bf7-f8146da0744d',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'CUPISNIQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e812fc8b-ed24-4309-9f00-ca32c566c3ba',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'GUZMANGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '044aa845-9e36-48e8-ba60-19b564edac2b',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'SAN BENITO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd30bad66-6e07-4289-9ee0-de2c52b3adbd',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'SANTA CRUZ DE TOLED'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '75b48d42-dff6-4deb-a0dd-924e23404fa5',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'TANTARICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '773e1bd6-78ce-4b52-a847-7984bfe0f943',
    'b2ce5145-6e50-497f-a836-541b75b43d68',
    'YONAN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd5941d59-c798-4450-9370-ad47a89ec245',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'CUTERVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '82e08544-531a-40e8-bc38-520b51f4098c',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'CALLAYUC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '85410cd4-ad0c-48f8-b659-d1ad9659c024',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'CHOROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69160866-5f6c-4e57-9c94-e80cbcb27805',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'CUJILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '95ba6fb0-bea7-4078-8117-d22ecdc3e53c',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'CUTERVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4030d5d6-ec3e-45aa-9b86-987a19bacfbe',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'LA RAMADA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '82195164-8adb-4091-9e0c-79e891078e14',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'PIMPINGOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2ab2554d-8c22-478a-87a4-0400b6ee9454',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'QUEROCOTILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b23be496-7f92-48fd-8f1f-2e2b648c0650',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'SAN ANDRES DE CUTERVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54843313-3ce9-401f-8644-db9905edfda7',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'SAN JUAN DE CUTERVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '625c0d64-078d-4360-90c2-c1391c4ce62b',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'SAN LUIS DE LUCMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5fbaafb8-6a24-43ff-8108-a2025b4c76f3',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'SANTA CRUZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c0f87921-bf5f-4adc-8af8-affe28e48d00',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'SANTO DOMINGO DE LA CAPILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e283804c-2d98-4553-bbee-bda396bf7fab',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'SANTO TOMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a596de05-2075-4c36-82d5-0f3952d45a39',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'SOCOTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2a3e88e7-0d3d-4572-82cd-e6029ef557b5',
    'd5941d59-c798-4450-9370-ad47a89ec245',
    'TORIBIO CASANOVA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd0631317-3e24-4c2b-a2d7-17c01773c621',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'HUALGAYOC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c8921828-d342-4aae-a40a-c6e9abe5a9f6',
    'd0631317-3e24-4c2b-a2d7-17c01773c621',
    'BAMBAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aa91c129-def1-4491-bd76-7f4ee01189b2',
    'd0631317-3e24-4c2b-a2d7-17c01773c621',
    'CHUGUR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '120ff3fd-75b4-499b-9314-aa762a3fb583',
    'd0631317-3e24-4c2b-a2d7-17c01773c621',
    'HUALGAYOC'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'JAEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1f658195-ad10-447f-87b3-97989ab49849',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'BELLAVISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0e94f154-bb4b-4096-909c-791bc0870543',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'CHONTALI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '760d210c-a125-4340-952f-b90a17e3d253',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'COLASAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '95c247f6-afc7-4ec2-94ad-a95ba905d9b4',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'HUABAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '73f81721-0e80-4cd4-86dd-08a1d85b4ee9',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'JAEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65223400-4eb6-4a22-a731-57df57d41416',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'LAS PIRIAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2b476dd2-eac1-498b-8e84-b22c41251d67',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'POMAHUACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9fb88002-5f39-4773-8fa4-3517e2675f46',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'PUCARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '84dce525-de73-4ddc-9c54-5a1bab6678a6',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'SALLIQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'df386c6c-2ed5-4d9d-86f6-07bca862be00',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'SAN FELIPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '39f104f2-f75f-4e39-908b-151bd359239e',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'SAN JOSE DEL ALTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd20d472c-ec95-464d-b759-9db70922b1c0',
    'e028b9ae-874c-494e-b193-1a343f4d5f83',
    'SANTA ROSA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '0f055764-3092-4720-832d-0d23a65ed004',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'SAN IGNACIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e5b0a16a-9fd2-4a8a-b0d5-9d42ecd7d9e1',
    '0f055764-3092-4720-832d-0d23a65ed004',
    'CHIRINOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4521a296-8536-4388-8298-bb791002a6b5',
    '0f055764-3092-4720-832d-0d23a65ed004',
    'HUARANGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7e49be3b-960f-47e3-8136-9601c34d54d7',
    '0f055764-3092-4720-832d-0d23a65ed004',
    'LA COIPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '03d0890a-822d-4c74-a799-6668488e20bf',
    '0f055764-3092-4720-832d-0d23a65ed004',
    'NAMBALLE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b4eafbe5-9d39-47af-9a6a-d4fe0fca9077',
    '0f055764-3092-4720-832d-0d23a65ed004',
    'SAN IGNACIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d3eb5e0-eece-41d0-bf5e-5f78d96dda36',
    '0f055764-3092-4720-832d-0d23a65ed004',
    'SAN JOSE DE LOURDES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2fad9fee-cd19-48a1-9414-5ebeba38dc8a',
    '0f055764-3092-4720-832d-0d23a65ed004',
    'TABACONAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'SAN MARCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1c89594e-1e4b-408f-a539-97271ab8ce05',
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    'CHANCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '679eb20a-0e99-43ea-af1a-e4356d2e5fc3',
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    'EDUARDO VILLANUEVA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7f305f90-c0f2-475e-bce3-be285bf6b2ff',
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    'GREGORIO PITA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4c5f3b72-9b00-4612-b757-55bc03acfbd6',
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    'ICHOCAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f8284484-9a3e-4b29-8488-d86ae4187cb2',
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    'JOSE MANUEL QUIROZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '465870ac-9afa-45d9-9251-c08a3a3ee88a',
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    'JOSE SABOGAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ee4cbdb3-8768-49f9-89d7-beabf889eec9',
    '734021e2-201f-44a8-bf26-a65bbb2a3be6',
    'PEDRO GALVEZ'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'SAN MIGUEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5e421c02-64c4-4078-9491-7b94c568f8fa',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'BOLIVAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ba6863b5-de0c-4d02-97ef-82d3cb07dcfa',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'CALQUIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9c3522d9-4d6f-4aca-bf7b-cb566480e30b',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'CATILLUC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '22a9ef41-aa06-456a-9e55-6be628a73964',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'EL PRADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c6e11a97-39b7-4724-abd0-92cdb3774463',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'LA FLORIDA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '293efefc-a700-4d69-aac1-05b826fc3e02',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'LLAPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38f84cd6-e2d3-42a4-b0d4-41e2e7c1188c',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'NANCHOC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aad77c4b-2462-4a8a-9a56-14230d2b88a8',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'NIEPOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '550479fe-51f0-4fed-b50f-1b48e0e3ee8a',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'SAN GREGORIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9f966051-e91e-4d52-b0a8-b8739b53c176',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'SAN MIGUEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf0d3ce5-5a2a-41de-83c4-264242613255',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'SAN SILVESTRE DE COCHAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a99afcb9-7000-4aeb-be79-8e465f3dec99',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'TONGOD'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '94bbc8c9-f587-4428-98c5-e8634974d195',
    '70195c7d-231f-45ce-b694-2d80f152b7fd',
    'UNION AGUA BLANCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5712ee6a-cfe9-40ad-bc42-042d1f20ad35',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'SAN PABLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '46529547-ff75-4fd7-9c93-979bbf43e163',
    '5712ee6a-cfe9-40ad-bc42-042d1f20ad35',
    'SAN BERNARDINO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ff78345b-b140-4c04-b1b0-aa7fd1e11572',
    '5712ee6a-cfe9-40ad-bc42-042d1f20ad35',
    'SAN LUIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd37605dd-e77d-451d-8e32-0b4db7d3c962',
    '5712ee6a-cfe9-40ad-bc42-042d1f20ad35',
    'SAN PABLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ca6f1a7e-6811-40cb-81fd-6298baeed9f8',
    '5712ee6a-cfe9-40ad-bc42-042d1f20ad35',
    'TUMBADEN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '41822bb3-e905-483d-971c-f630f17d6dab',
    '8bd6982c-eec3-4006-9e9f-596d8f7448b5',
    'SANTA CRUZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '52aefbe9-ae96-44b4-adc1-204138194b11',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'ANDABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1099b66c-179a-4477-b928-c47a858f23c1',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'CATACHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f11da1f2-ec4d-4059-8918-b907d0c455a9',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'CHANCAYBAÑOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f4ef26e2-8bb9-40b9-8c21-f82cbf83b5a7',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'LA ESPERANZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dfe045af-5cc6-4352-8ab8-2da955597cba',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'NINABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2879ea16-cbb1-442f-a5b0-ef09d058a367',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'PULAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '882e64e5-e864-4285-a788-4212cc6167dd',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'SANTA CRUZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd825aa54-f779-47ed-9862-43af08571d7d',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'SAUCEPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5e8e059e-80dc-4351-b9a1-84d96e0f1334',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'SEXI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd4cd81a9-0948-47d9-ad0a-86385c4ffd64',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'UTICYACU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '91859823-c26d-4c49-8563-752ef2cae3da',
    '41822bb3-e905-483d-971c-f630f17d6dab',
    'YAUYUCAN'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'ANCASH'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'a6868eac-97d9-4621-893b-c76a863a6036',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'CASMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9c86669d-a978-4300-bbf4-cd77a1532685',
    'a6868eac-97d9-4621-893b-c76a863a6036',
    'BUENA VISTA ALTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ad9e76eb-769b-4f80-b411-a9c1891c5f9b',
    'a6868eac-97d9-4621-893b-c76a863a6036',
    'CASMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4b5d58fc-7bbd-4155-b04c-287a44c453d5',
    'a6868eac-97d9-4621-893b-c76a863a6036',
    'COMANDANTE NOEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72d2e180-61fe-4c6e-a6a9-6ca5eeb3dce1',
    'a6868eac-97d9-4621-893b-c76a863a6036',
    'YAUTAN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'CORONGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b094ed5-0ced-4030-8202-e077a98a40c0',
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'ACO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6c102c8c-cbf9-47fc-b8cc-23f6c2d11aab',
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'BAMBAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0cc82c9-cf5e-4c79-b7b8-85281b5af789',
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'CORONGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2425ba9e-b8e7-4abc-8db1-bb0b54d26eb0',
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'CUSCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b6fb978-9d2d-4597-b2be-8385f48626a2',
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'LA PAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '910689d2-0ef6-4d27-aa75-c40a98c09bc6',
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'YANAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b6d77968-2588-444e-a458-298aaa120619',
    'ba311d71-25e5-4e88-8339-b9ab71cb3d7d',
    'YUPAN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '13a297f1-553e-41d5-b394-dd7268d83623',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'HUARMEY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8578845f-fd25-4a8c-93d1-76638e1eeed7',
    '13a297f1-553e-41d5-b394-dd7268d83623',
    'COCHAPETI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38b1638d-93f1-4536-b493-dbfadba69a2d',
    '13a297f1-553e-41d5-b394-dd7268d83623',
    'CULEBRAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '33890749-0c84-4eff-a025-accc6ea51ae8',
    '13a297f1-553e-41d5-b394-dd7268d83623',
    'HUARMEY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7424da86-cd1d-4f62-a12c-83d747ccdb47',
    '13a297f1-553e-41d5-b394-dd7268d83623',
    'HUAYAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9fff97d2-3131-41f9-9fdb-331b7ef8e1c1',
    '13a297f1-553e-41d5-b394-dd7268d83623',
    'MALVAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'PALLASCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0da90f75-9989-43c7-8a65-600b27bdcbd5',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'BOLOGNESI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e8bc5d2f-406a-4dee-aaed-b152915a5604',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'CABANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2660529c-3670-4e1b-aee5-6f421d63a136',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'CONCHUCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '70d481ba-2548-4f50-9103-6b2e4982ea10',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'HUACASCHUQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '402db0b1-8fff-4487-b682-f7e38feaf664',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'HUANDOVAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '799c9225-8afa-49b3-a01d-7ea786b9f4ed',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'LACABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5f1e6ee8-c0ff-4500-8c49-92b2da9edd0f',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'LLAPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2987e7ce-262b-47bd-b901-04ad40aa22dd',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'PALLASCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '170160d6-3baa-4ae7-9a42-105757b2a471',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'PAMPAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f0adc22f-ebba-4e27-b25a-e21602dcefab',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'affe24c7-cc43-4bdd-8d1b-dff13f32b6e1',
    '0148e79f-63ec-4fed-bb27-ec2fa1f0234a',
    'TAUCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'SANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0a8f449e-d6e5-4f62-ad7c-a71ff0d92769',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'CACERES DEL PERU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b48c8302-d04c-4728-a7c6-c51ccdebed29',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'CHIMBOTE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4b5f6d48-0212-41ae-ba8b-e3c9920a35f3',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'COISHCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6eaa4b89-92f5-4bb1-990a-6f866da46fc6',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'MACATE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1042879-0de0-4aa5-a8dc-f1b50989ae3c',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'MORO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'daa88d45-b90a-4425-811a-395ac09f596b',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'NEPEÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e8162d8c-a0c6-477a-b336-36e5359b19b7',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'NUEVO CHIMBOTE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '08efd0fc-ec4b-4184-b514-0b6f09c8b983',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'SAMANCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dd5c5416-16ec-41a9-9f11-cf38781d2913',
    'ce872292-a0fe-4e3f-a21c-460a35955ba7',
    'SANTA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'SIHUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '22a464fb-82a0-43ce-9db4-7416f344b09e',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'ACOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c71273dd-2193-43c8-b646-f38b427de5e4',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'ALFONSO UGARTE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '47ee22ac-3cb4-4d19-93c9-7405038a79d7',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'CASHAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0419938b-6b7c-43a5-adeb-abfc98777366',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'CHINGALPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bc6f983b-ef39-4f66-82f5-3df6abfcbedd',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'HUAYLLABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e2f697f7-beaf-47bf-bdb5-88e79636876a',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'QUICHES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '255da731-0ff0-4675-8261-26381ddd2d47',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'RAGASH'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '30408213-60d2-4a47-a95d-55c1332af8f5',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'SAN JUAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cc7a2859-70b2-4116-8cb1-3cc018c6fc32',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'SICSIBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2e2a30b4-9829-4f25-a3c1-47599ecc31b8',
    '5f41a1a1-a4dd-44c6-8490-cdfbe072b6a0',
    'SIHUAS'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'APURIMAC'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'ABANCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '84e00813-3ffd-46b4-9309-316acc927928',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'ABANCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e86fb53-71bd-472d-9546-4962ba0bc6f8',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'CHACOCHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6311b2d-1ee4-468f-b6d7-891a131b6e01',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'CIRCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bc4e5a19-4b65-48cd-9935-881ac5bf33a6',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'CURAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '939362a8-d976-465b-bad9-5cc6a98eccb6',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'HUANIPACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9c116d56-6d2a-4be6-9c7a-0510de99e0ee',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'LAMBRAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0c29d2bf-6eb2-4513-8c25-090d3e687f98',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'PICHIRHUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ebbd61bd-6ebc-479d-8d36-171d488765c4',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'SAN PEDRO DE CACHORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7d086665-31c4-42bc-8043-8de68485d5a8',
    '9cd9a72d-255a-4122-a46e-2bf495ab5b04',
    'TAMBURCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '80890e53-97e6-4288-9e51-525c2257a813',
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'ANDAHUAYLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dd67dc59-d972-48a1-ae57-ca046b8963f5',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'ANDAHUAYLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7e0251e8-e3f8-4619-a909-fb3ecafa9f8e',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'ANDARAPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f9ae7bbd-01fb-43f4-98bc-1ff9093b29b2',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'CHIARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c171b115-a54f-42f5-bf9f-6aacc9d9e8c6',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'HUANCARAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6ca3f3f5-1b8d-4625-a3bc-94c44f083d38',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'HUANCARAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f59200fe-1151-4157-80f6-94e4750f741d',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'HUAYANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c85e70fd-ad2a-4966-bc63-4ed1ba75ede4',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'JOSE MARIA ARGUEDAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9a6e4f4f-da3f-439e-a229-7c52221a8e69',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'KAQUIABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '61270962-c735-4bb3-9cb3-0594e474b50c',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'KISHUARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'da5e43e0-4ca1-4aff-824f-f1852bd64a1b',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'PACOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '39c2c3af-d56e-44ed-86ef-1e7f74c04f8d',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'PACUCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '659a0ad2-648e-40c1-ab99-07f92c952543',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'PAMPACHIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4fe8f980-87fa-457e-9b1f-476fde0d0ac3',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'POMACOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1c8eb1e1-7afc-4679-8190-fd02abae8d05',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'SAN ANTONIO DE CACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ffda3b82-0e6c-44a8-9a59-8fe40639b991',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'SAN JERONIMO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12448e3e-9416-444f-80c6-4f0e6dab0ea1',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'SAN MIGUEL DE CHACCRAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '526b987d-3cd8-4037-8200-aaecccba4f93',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'SANTA MARIA DE CHICMO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fec2d863-3237-4ee2-9a0b-2acc721fa637',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'TALAVERA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '979d2374-d8e6-4f6d-9e0a-538b698edb7e',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'TUMAY HUARACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd01e5b2e-48e6-4e49-9fed-a779d63f6e76',
    '80890e53-97e6-4288-9e51-525c2257a813',
    'TURPO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'ANTABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b798e6ce-021b-4544-8ad9-e2868e787795',
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    'ANTABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e69d4a34-5a82-460c-a517-c29696bb4d93',
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    'EL ORO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b5d5fb7c-5f4b-4495-8d9b-2037ce278397',
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    'HUAQUIRCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6fb17107-4d58-452d-9a91-a39d608a5616',
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    'JUAN ESPINOZA MEDRANO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7c0440f2-d444-46dd-bb0a-88f7a57080c2',
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    'OROPESA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '43b48725-c9a0-4c87-b328-0ccc1a0ab05c',
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    'PACHACONAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0c37eeb-193b-4d71-94f3-aaba87916d31',
    'c14454f0-f384-4b9c-afdf-481b6763aea5',
    'SABAINO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'AYMARAES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f0f07a4b-4fce-4f35-ad00-da20e1addb51',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'CAPAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0d476c6-4fcf-4845-a175-ccc6ce5f71f3',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'CARAYBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72d9ecd3-b45b-4d62-95d2-a0ba97d03f26',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'CHALHUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '06ab3ed7-d5f4-434a-95a0-a5020f1be2dd',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'CHAPIMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aaaf6611-f10e-4924-b529-ee50a03a667c',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'COLCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b02210c1-b5e0-4d66-80be-965d3060ff59',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'COTARUSE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f30ec26a-f7b6-4579-8164-67b105493d1d',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'HUAYLLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd94ebc84-32f2-4fe1-9488-e17529319fc8',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'JUSTO APU SAHUARAURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9f07f761-2bc3-47dd-b767-6d49c3c822ce',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'LUCRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1e6e70ee-495f-434d-88f1-22bdb9a29274',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'POCOHUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65d2a672-1357-4b2a-bb13-28f7c4e83694',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'SAN JUAN DE CHACÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'acd0df2a-3e00-4f3d-ab0c-2e6115708bbb',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'SAÑAYCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '727aac2c-e756-4f59-9242-310a55f3be5a',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'SORAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '549bcc7d-691c-4e21-8d46-229b903b2ac8',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'TAPAIRIHUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b1b948f9-c33a-4902-8781-f28e5fe5f5ef',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'TINTAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bff2d45e-89b4-43f0-9957-1250729b38fa',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'TORAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '28cac49c-2f22-40f8-bedc-2ca647386cd5',
    '7c8ee101-d8b4-455d-abed-bd50e129dd8f',
    'YANACA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'CHINCHEROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9d903650-3697-4db3-90fd-08bd97478131',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'AHUAYRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4749cfff-9bdc-4f7a-b016-23f95a86b8d1',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'ANCO_HUALLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '895c8f31-62e8-466a-835f-ca1d527ca11c',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'CHINCHEROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18b2e17d-9896-4e4c-a4a6-ef1bdfcaa396',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'COCHARCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab0786d1-288c-49b3-ac9d-f0d2a9cf07eb',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'EL PORVENIR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ef121e94-a2b5-4274-bd44-04ec59908ab6',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'HUACCANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8f721961-7ff3-41fd-98ff-0e8419df11ec',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'LOS CHANKAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e452a445-ed8f-48a5-8917-98ad93a8c403',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'OCOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6eb85f0b-57d2-4758-a42d-4fd9aba7da99',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'ONGOY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '42b0af82-fcc4-4f12-9dc6-1f3ca1bb993c',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'RANRACANCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b4a3d7a8-ef48-4fd1-b99b-4759d1c1b12c',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'ROCCHACC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1775b6d3-89b4-46b8-bb5f-a265854202cd',
    '7d5dc6fb-df16-4334-b3cf-fa14c761937d',
    'URANMARCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '19d3d8c5-6f0d-466b-9f23-1b170d120e59',
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'COTABAMBAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5209dbcd-77e1-4e51-a880-0cb08dca8c10',
    '19d3d8c5-6f0d-466b-9f23-1b170d120e59',
    'CHALLHUAHUACHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '29bb2e5f-2dee-4938-b536-5a376a014a56',
    '19d3d8c5-6f0d-466b-9f23-1b170d120e59',
    'COTABAMBAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35543861-673a-4c1e-bda8-9d7d68a45873',
    '19d3d8c5-6f0d-466b-9f23-1b170d120e59',
    'COYLLURQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b6230bf9-b579-4898-89cb-22ec11170ed5',
    '19d3d8c5-6f0d-466b-9f23-1b170d120e59',
    'HAQUIRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '90e6c693-429f-432c-8f3f-118fdb5b459b',
    '19d3d8c5-6f0d-466b-9f23-1b170d120e59',
    'MARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aaf1d8ba-fa52-40fb-94a8-89b6f271d59d',
    '19d3d8c5-6f0d-466b-9f23-1b170d120e59',
    'TAMBOBAMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    '5846fc1f-d368-4cbb-b950-9c68259d650e',
    'GRAU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd2dd0edc-0a7e-4cbb-a9ec-20cde2f6a9fe',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'CHUQUIBAMBILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c0e09ee4-61e1-4fa9-9cc7-98c29ff51c52',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'CURASCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f82f76d0-d86b-4dff-9ede-f7d7bf3880a8',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'CURPAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7906e6e4-b99c-4011-b57d-661125c9d87e',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'GAMARRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7868d433-e9c5-4c95-9bfe-912d176f7b5f',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'HUAYLLATI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '85e01fcd-fe97-47e2-b222-3e5634ef8290',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'MAMARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69c97dd8-eff2-4c53-ba70-b9a71a4a9021',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'MICAELA BASTIDAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0ae3104a-006b-47cb-8044-36530fb9cd56',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'PATAYPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f02013a5-a703-4a30-b145-2d983a0c5bf0',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'PROGRESO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '67fcb147-ee9d-458e-a8c0-f32ffb1e1d32',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'SAN ANTONIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '74d9a60d-fe9b-4b0a-b64f-b4fc533bcb52',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b6f8151a-c9d3-4e29-8c7f-d946f5ce09cc',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'TURPAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18c6c7a4-0107-4358-9c24-e17eea6b06eb',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'VILCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6163d51-f51c-4ca7-9c00-0b37f7d0025a',
    '41d621cb-dde4-4e80-a106-a4bb483de3af',
    'VIRUNDO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'ACOMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b277c258-f87d-4836-b769-63c44710275b',
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    'ACOMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bf806358-5184-4fef-98e7-e143d2834f5f',
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    'ACOPIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '79a78e82-1f6d-4c77-b2cd-f5550d15300c',
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    'ACOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '275fd7be-29a1-4620-a13a-09e4873ef415',
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    'MOSOC LLACTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '19fc590f-f160-418a-912a-c4dc45e05cae',
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    'POMACANCHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6b37ee06-854e-4594-ac83-1573fb5fc21a',
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    'RONDOCAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '407d21ab-9e69-463e-80cd-5b71dd730d5b',
    '836a01b4-c5fc-4908-9388-e412a314fb13',
    'SANGARARA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'ANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c665e9e8-7741-4339-8405-c0ab50fc9e41',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'ANCAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6a4cc404-f7f0-4026-9041-0bdd276870e5',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'ANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd70b6fd1-0517-4f41-91e0-ff7c195255f1',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'CACHIMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '52c61ee0-471e-42ee-ba6c-e7eaa90913da',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'CHINCHAYPUJIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3b086e75-108c-4a72-8d78-f820210aba45',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'HUAROCONDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b49e1c62-a2bf-4dd2-8ba1-49a868d2ec52',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'LIMATAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3118cdbb-c6b2-4b0d-b903-ad00cdb58d95',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'MOLLEPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5cfeb914-9d2a-4d76-9aa9-efa0d2171c7c',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'PUCYURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '04a8e3b5-028f-4c4a-be5c-b33f830d4e84',
    '6fa35e2e-65b9-4dfb-9e05-8c56495540ae',
    'ZURITE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'CALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bbafed1e-5f5d-4ff6-9803-156776c737d7',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'CALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f9ecf20f-cc4d-4710-be45-6dac3eb4fba4',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'COYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f17baf8d-f612-44e6-b4c4-d9de248fedce',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'LAMAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ad58999a-b9ef-4e7a-ba68-3ef973787cf3',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'LARES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '048602f5-1a26-44c4-a207-ba670d8ebfbb',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'PISAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93a232d3-0798-4e40-8128-cd8ff25e17d7',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'SAN SALVADOR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '524aa1dc-3f51-4cef-bb90-187bdf198e02',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'TARAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '04ee2654-11c7-4066-ab21-e6a23ee03847',
    '08eb602a-c12d-447c-95f5-97f1d07e2046',
    'YANATILE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '599eb69c-291d-4864-befc-36c60b773227',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'CANAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd0478fb-a468-4bad-897d-c4f2f73ef691',
    '599eb69c-291d-4864-befc-36c60b773227',
    'CHECCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '549cd32c-20a5-46f2-bf71-b758d5c0443a',
    '599eb69c-291d-4864-befc-36c60b773227',
    'KUNTURKANKI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e90f3670-441a-43d0-a58c-3eca0fee0cd6',
    '599eb69c-291d-4864-befc-36c60b773227',
    'LANGUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65fc8409-9278-4670-8d3f-f4d5929a0897',
    '599eb69c-291d-4864-befc-36c60b773227',
    'LAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c2e465d2-cf1f-4eb8-801b-69ce5471ed0f',
    '599eb69c-291d-4864-befc-36c60b773227',
    'PAMPAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3fe9a611-23fe-48f3-94e0-755ac7f15e90',
    '599eb69c-291d-4864-befc-36c60b773227',
    'QUEHUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c5c8ec54-c7e6-4ade-999a-cf06298e5d12',
    '599eb69c-291d-4864-befc-36c60b773227',
    'TUPAC AMARU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ae02ec3a-3be9-4784-9231-4d33165dee79',
    '599eb69c-291d-4864-befc-36c60b773227',
    'YANAOCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'CANCHIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be4b1e8e-e622-437d-93f2-259de8d6f172',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'CHECACUPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '31980580-3ee3-43b8-9f86-912e2449d90c',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'COMBAPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '071c06f6-8e85-4e25-bf5f-fb7441eadb89',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'MARANGANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1bc8961d-aac6-494e-8ce2-4233dd4c3610',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'PITUMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f9c54d08-2283-4abc-8b10-eec6a5caf923',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'SAN PABLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4efea2e0-6b7e-4021-bf05-a00c72c461be',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'SAN PEDRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e5ffd16c-f473-4724-85ca-782570a7e034',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'SICUANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd5226095-5018-4357-8b58-526b2ca7f02c',
    '18efbec9-e9a9-45d9-8c48-4e40e62edcd3',
    'TINTA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'CHUMBIVILCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '05f249b7-f628-4e4e-b1b6-0088da68ee9f',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'CAPACMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9a70ddc9-2eb9-48ca-96ed-be091b76a2c3',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'CHAMACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b06692ed-ae09-47e7-98af-4e783d081e52',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'COLQUEMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '358e7c0d-336d-4258-8738-d5db0d5adf21',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'LIVITACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93b026d3-4161-4277-9c62-e0b9bc7fc73b',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'LLUSCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1b31e91a-0530-41da-af9c-ed8851404212',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'QUIÑOTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '463f1625-1995-47d6-822c-4dfa73dbca3d',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'SANTO TOMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0112b8ce-581e-4f55-bcf2-bf2dd887cea0',
    'f6c8afe3-69e4-49c5-9211-a58f0a56519f',
    'VELILLE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3a014067-fb41-45b7-b03b-2479376eb190',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'CUSCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5dda835d-3a12-418a-8605-d8064c903b83',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'CCORCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12f599fc-5759-437b-98a5-f3804517c203',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'CUSCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3a000c4e-414c-48c3-b3e8-553e1cac1719',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'POROY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '392d1256-87bd-4877-a81c-222bc2ac929f',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'SAN JERONIMO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93ece653-2d9f-4c85-9e7e-c676501867bc',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'SAN SEBASTIAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '499b7e70-4704-4dbf-8c69-daa998f15564',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'SANTIAGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '201f4678-6617-4717-b7c2-082d24ec17b8',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'SAYLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd4e0503-be40-4e2b-874a-1f8a0d4ccc6b',
    '3a014067-fb41-45b7-b03b-2479376eb190',
    'WANCHAQ'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'ESPINAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e4b0f520-7212-45ec-8afd-e329dce07ec9',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'ALTO PICHIGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2f6a40b7-846d-4cf8-904b-1ba364f36b7c',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'CONDOROMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ff30edd3-a24b-4628-9e7c-c665c8c0e321',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'COPORAQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5ba1de87-4ed6-4897-b3a9-ecd87efa3a57',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'ESPINAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '21759e64-c9f6-4ef4-91ad-4b36ed91e3ac',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'OCORURO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69aa5fc6-c08d-49cf-92e1-4ffd35409b90',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'PALLPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8a2a865c-8897-471d-a3f3-fc891e6c6647',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'PICHIGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '44772637-c4da-4f29-a34b-89142aac7044',
    '560d7ba8-1291-4e7f-98c0-5299f8fc7892',
    'SUYCKUTAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '381531c0-1abc-41ee-8e7d-c738fb45bdce',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'CIELO PUNCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1be71fd-4896-41eb-9291-2431a206c8a2',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'ECHARATE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '27c60492-ad37-4f42-92c5-b62772214b69',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'HUAYOPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b30805eb-e0cb-40d6-b33a-59e0e87fc52d',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'INKAWASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2dc441c3-2ce9-4744-87b6-ae582aa2507e',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'KUMPIRUSHIATO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6480c56f-5adf-4cb3-827f-1f2b7d94b393',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'MANITEA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '768c4782-8593-4e8f-8498-c88c337959fc',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'MARANURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '147c55f2-7930-45c9-9562-ed43c0c78a44',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'MEGANTONI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b569499b-5039-4026-a7ae-70e7091af5bd',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'OCOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '57a56f7c-9583-456b-9b59-565292e253dc',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'QUELLOUNO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e59c8f37-dbfc-4393-8cc2-ccea5af47d38',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'SANTA ANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7a6c5dd8-e80f-458b-af32-a1c2f989e495',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'SANTA TERESA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '05b54119-413f-4f9c-9c54-353931f71191',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'UNION ASHANINKA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b46d862-cd54-4bb1-a289-cdbd1c2d13c6',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'VILCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c54ba4cf-7ac2-4f24-a51a-8e5cff8c0146',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'VILLA KINTIARINA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fa277714-df88-483b-92e1-ed1aec32022d',
    '7cfe66db-4dcc-41b9-88d3-c397ce92c659',
    'VILLA VIRGEN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'PARURO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1acaadae-78ce-417a-b0fd-140f9d16aad0',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'ACCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b1cbd43-3a30-4630-864c-8b09f995ee80',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'CCAPI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'da16df0a-5e73-4f50-8340-d53c38e29f40',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'COLCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '807de9ed-1254-40c3-9c6e-51c95a769e95',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'HUANOQUITE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f8d9b008-ce3d-42c6-a103-e8e598448a74',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'OMACHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5ea500e-5787-465b-88e4-f38e67ae7d1e',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'PACCARITAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d405683-6aff-4f92-a656-c31fac68a97b',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'PARURO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a98dcd5d-94e1-4713-9b9e-26a3b6dee0fd',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'PILLPINTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4d1d5310-7cc5-4514-93d2-372bfaaacef7',
    '2b1cebb7-edb3-4c04-85be-c80344f77b23',
    'YAURISQUE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'ee502335-b0a6-4039-baa5-7504fee016c6',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'PAUCARTAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5ad8ccd8-6eac-4270-b93d-5d43d75f9286',
    'ee502335-b0a6-4039-baa5-7504fee016c6',
    'CAICAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4944bb50-7bd3-4314-abe8-7d4c4678c2bb',
    'ee502335-b0a6-4039-baa5-7504fee016c6',
    'CHALLABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c61a4543-96dc-4022-b97f-562ff66e5a6d',
    'ee502335-b0a6-4039-baa5-7504fee016c6',
    'COLQUEPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bfe361a9-2c6c-4f3a-847c-9167ac28f5ec',
    'ee502335-b0a6-4039-baa5-7504fee016c6',
    'HUANCARANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8108c5f4-fe08-494d-b1ff-8e7097c696f4',
    'ee502335-b0a6-4039-baa5-7504fee016c6',
    'KOSÑIPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e062c0bd-f05b-4861-9b96-0acf6631d0a3',
    'ee502335-b0a6-4039-baa5-7504fee016c6',
    'PAUCARTAMBO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'QUISPICANCHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c79349a3-ed9a-40ab-8583-bdd2eafa3ba2',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'ANDAHUAYLILLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b3e551f-385a-43ca-bffa-44d85213023b',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'CAMANTI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '23a27ced-4b58-4e79-aa6d-1b80928074b4',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'CCARHUAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ffaa3a77-b35b-42f2-b00e-5282007655f0',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'CCATCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54c1a39b-4e24-4b12-b0de-e6a80535eaf5',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'CUSIPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'db66448f-f42e-4df0-8a81-7a001d61d1c0',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'HUARO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '150182e5-c52b-4b81-be1a-4f56c510034b',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'LUCRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b8598c4-b64c-4f0a-bfa8-7aa09a8889fb',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'MARCAPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '971c5973-0242-45c1-9cd7-51e4202baa6d',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'OCONGATE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '86875202-ecc6-41d7-b2ea-66263feaedac',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'OROPESA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c73e2010-ed56-43b6-ac99-f04ff07aaed3',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'QUIQUIJANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '539cbace-b5d2-41fc-a4bc-bb82828f9b05',
    'b090070b-3ce3-49b0-8d7b-af0f97977dca',
    'URCOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    '0d0fa3ca-c048-4cd0-b5a0-2886dd266f44',
    'URUBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4bb1fe55-d82f-49a0-a7ee-b831e74b8667',
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    'CHINCHERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b3b0b623-a093-4602-8515-bef668d753b5',
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    'HUAYLLABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0d29f3ce-5e88-486e-a158-1b1d80fead23',
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    'MACHUPICCHU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd8dd2529-2f2b-4558-bcb5-e52b500073cc',
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    'MARAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd31b919-443b-4070-98f8-1b0b169d98e8',
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    'OLLANTAYTAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b67abe8d-218f-4675-8650-02d667ea69bf',
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    'URUBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7c3547e1-5fad-45e2-8d0d-5d87568b98a4',
    '595d0885-3f4d-4ff9-a294-001def831ef5',
    'YUCAY'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7764501c-590f-4e74-9790-74f8cdfe6cff',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'BARRANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '050f24b8-53f2-4832-9b51-6a583f28bcb5',
    '7764501c-590f-4e74-9790-74f8cdfe6cff',
    'BARRANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f72d4fb0-146c-48be-8bc5-17daca081a2a',
    '7764501c-590f-4e74-9790-74f8cdfe6cff',
    'PARAMONGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dda1775d-58e5-48e2-aa1a-519b7ea1317e',
    '7764501c-590f-4e74-9790-74f8cdfe6cff',
    'PATIVILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'df34072c-0194-483f-a699-752c3d0f79ae',
    '7764501c-590f-4e74-9790-74f8cdfe6cff',
    'SUPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '50d43cdc-7201-4581-a1c7-9765de057bce',
    '7764501c-590f-4e74-9790-74f8cdfe6cff',
    'SUPE PUERTO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3b21e004-37c1-495c-a39f-1da544c651d6',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'CAJATAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b30fdae6-0567-4e8f-86ed-693d410a9684',
    '3b21e004-37c1-495c-a39f-1da544c651d6',
    'CAJATAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2225d86f-de5f-4e29-bf27-072055d3e9c6',
    '3b21e004-37c1-495c-a39f-1da544c651d6',
    'COPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '32427945-4a87-4622-8d4d-5d7cf7a98924',
    '3b21e004-37c1-495c-a39f-1da544c651d6',
    'GORGOR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7eb3272d-f682-4bb7-9ca4-6c4da56d7248',
    '3b21e004-37c1-495c-a39f-1da544c651d6',
    'HUANCAPON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '304e150e-3eb3-443d-ba7b-763a2b466ad2',
    '3b21e004-37c1-495c-a39f-1da544c651d6',
    'MANAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'HUARAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '334b9800-39df-4445-ad98-9c5d09e82866',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'ATAVILLOS ALTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4fdddd42-5af8-4c36-8bcb-c8b36d3b065a',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'ATAVILLOS BAJO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b8932bea-30ca-473c-94d5-4602257615f0',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'AUCALLAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c54742cb-7dd5-4952-aff9-758bc060c61a',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'CHANCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb0d2f89-d3d0-4cc8-afc2-093ed8a85ad9',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'HUARAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e9241ff8-6045-468d-81eb-b827ca0490bb',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'IHUARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '068b497b-b708-462b-aaa6-4ac950efe393',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'LAMPIAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2a108320-ffe1-44ba-b2bc-fe3955c575e1',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'PACARAOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f3597810-dc07-4a82-b300-490ec56bbf05',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'SAN MIGUEL DE ACOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'edb2a44a-3d9e-4cbe-bde0-457378927a7b',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'SANTA CRUZ DE ANDAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6f40318e-a938-4f48-ade1-6ef96cdb7aa8',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'SUMBILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b9d4b1cd-d903-4f36-b842-21c6ecf72922',
    '8d14db83-9a22-41a6-897a-2a743e45763d',
    'VEINTISIETE DE NOVIEMBRE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'HUAURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72bc1479-13db-484a-a1e3-e6214269052c',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'AMBAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ce4a04dd-9855-40b4-a469-0288da603b70',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'CALETA DE CARQUIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '86b1fca3-d7d2-4ad5-8cb0-56fc08cc8d4a',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'CHECRAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7d59786b-2397-4e69-a1b1-1941a149ac0d',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'HUACHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f7a059f8-61f6-4ab7-aed3-4790e4908dd2',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'HUALMAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e199c01a-dfea-4e3b-8233-e0fbfec6dd10',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'HUAURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c03339a8-5c58-4b98-9b51-3119781f643f',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'LEONCIO PRADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab89cbc4-ac55-4bd3-b5e5-712115cdacb1',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'PACCHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cbf35098-20fe-4a4e-b0ef-d84670f2ed5d',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'SANTA LEONOR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '32b62f70-f316-4446-b08a-454c3666ecb6',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'SANTA MARIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0c4fc17d-d880-4532-8977-a218b10febdb',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'SAYAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '97d6a36b-df23-4034-96ee-a67169428942',
    'f361e70c-9a27-4fa6-866d-d651dc832fae',
    'VEGUETA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '37c122bc-aec8-44eb-97fa-7480281368be',
    '931470d9-df5c-4f4f-8157-ebe62c1a7d02',
    'OYON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b82a5306-d2cf-42dc-b495-f4cb757f144e',
    '37c122bc-aec8-44eb-97fa-7480281368be',
    'ANDAJES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1651e3de-5d9a-4be4-bb3f-5de301b9a362',
    '37c122bc-aec8-44eb-97fa-7480281368be',
    'CAUJUL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f40520ac-70d1-4093-9a7d-5a11d65ec48f',
    '37c122bc-aec8-44eb-97fa-7480281368be',
    'COCHAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '917951ba-0adc-45aa-a3b4-8559088383b7',
    '37c122bc-aec8-44eb-97fa-7480281368be',
    'NAVAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '48686d42-b789-4bd9-8d24-1b5afadd7df3',
    '37c122bc-aec8-44eb-97fa-7480281368be',
    'OYON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd2383b42-220d-4091-989e-0f6bd5a3e64e',
    '37c122bc-aec8-44eb-97fa-7480281368be',
    'PACHANGARA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'HUANUCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'AMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '26d4a534-1500-4680-bccd-2cdf479ed498',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'AMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c4b3583f-d3b4-4cee-8422-8272fa76bf5f',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'CAYNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e6885b4f-2844-4300-9aa3-6b83844cdc6b',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'COLPAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '44fd9a90-0c2b-4733-b3d7-973aeb147f07',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'CONCHAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b0cdbe0-eecc-49a7-9ccc-09f1cd33e128',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'HUACAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b6ea2c12-1c68-4e02-833c-63df4b815e0d',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'SAN FRANCISCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '64112e97-c8fb-41a9-8ad4-ee17028ea02a',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'SAN RAFAEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd5285e2e-0ff4-4809-ab99-f0d2127c554f',
    '085426ba-526f-4154-8ba2-3e65642b93c1',
    'TOMAY KICHWA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'DOS DE MAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0e350738-ef44-4908-8593-4c5cea6b24cb',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'CHUQUIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b9acdc22-fcc1-4ade-a906-611c7ca3a6fc',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'LA UNION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '06904060-326d-47b6-9ce2-3486c1e8cc38',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'MARIAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a21791c3-89ad-425f-8f7c-596c522c3746',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'PACHAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bf19d838-fe18-441b-b4e4-1a016be7f1db',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'QUIVILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e88a8df7-bad1-48fd-b506-dabbd1964e43',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'RIPAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7c7cd0d4-2dc8-4599-bb49-9ae8b29c945d',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'SHUNQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b06af8e7-4a7b-4781-99e9-189d2b90ea22',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'SILLAPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '81126eae-e955-49f4-9cc4-87e47e1ff5be',
    'daa88109-6e99-497e-b47b-d9c908a1c13c',
    'YANAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b48946bd-c4a0-4971-bf19-bc70ec7f27d4',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'HUACAYBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9159d2fc-5ec9-4728-b3fe-bc0224574df3',
    'b48946bd-c4a0-4971-bf19-bc70ec7f27d4',
    'CANCHABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c0d73639-9f82-4cc8-8087-deb737e46b1f',
    'b48946bd-c4a0-4971-bf19-bc70ec7f27d4',
    'COCHABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b8fbe90-9642-4521-b6b8-14f8a4134416',
    'b48946bd-c4a0-4971-bf19-bc70ec7f27d4',
    'HUACAYBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '78dd575d-2750-4b18-bb48-188ff013e851',
    'b48946bd-c4a0-4971-bf19-bc70ec7f27d4',
    'PINRA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'HUAMALIES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '00cef2cd-203b-4a05-ab24-54f515304810',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'ARANCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38ce1c81-4a1a-4dec-b221-70a4d75b93af',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'CHAVIN DE PARIARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f1aafe6b-837a-47b6-bdf7-99cf990271ac',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'JACAS GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e2c8eaa-d2a6-4ab4-898d-196a0989f923',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'JIRCAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '26cec351-7055-4978-a5a7-b37af4cdff4c',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'LLATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1440dcb4-cb0a-4529-80d8-13d9e25d175f',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'MIRAFLORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'de99868f-79a4-4a0c-aaec-7f03ab84ab36',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'MONZON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '924db7e2-7c65-441b-9d18-b433cf2e9bc3',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'PUNCHAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cdf7bb32-a1c1-4f45-8418-572c36396faf',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'PUÑOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0c1ff817-a6be-4587-88be-14dff1868ae4',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'SINGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6f36e479-0a12-49f9-bdb9-fae17f3d401a',
    'e69f6ba0-ba46-4edc-8eeb-a33fa59a6f45',
    'TANTAMAYO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'HUANUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eb7dc8a8-6d5c-492b-8edf-e75077432a48',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'AMARILIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c9d83a28-ffeb-48b1-a7ae-1ecfde6197d1',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'CHINCHAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0babbb9a-cfd2-4103-a360-c57cc5e06f29',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'CHURUBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '752952ae-ecde-4357-bbde-ea2497de4d5c',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'HUANUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2a0ce401-fac4-4aac-afed-82b284a2b6ab',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'MARGOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf42c1a1-0f9f-4af9-bf46-08198a197249',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'PILLCO MARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '84bf6f23-7c94-4706-ac15-120646171172',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'QUISQUI (KICHKI)'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bf0750d0-16c1-4533-b750-b5517ff21a1e',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'SAN FRANCISCO DE CAYRAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'afe2d403-bdae-46d2-82b9-861f5181edde',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'SAN PABLO DE PILLAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ea7ed271-5cf1-4dff-a9c9-11aa27561ab4',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'SAN PEDRO DE CHAULAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e239e7a5-3fb5-4a57-9ed8-840d5419c6c3',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'SANTA MARIA DEL VALLE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '910beb1f-a2ab-4b30-8eab-65f97728731d',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'YACUS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0899fff4-54dc-4187-b382-1a5fbaceb77c',
    '4111293b-41d6-490e-94a0-afad186b0f9d',
    'YARUMAYO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'LAURICOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '08b600bf-45a7-44cb-a87f-a52ad5cb06ca',
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'BAÑOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e2ad772e-c711-48f2-89c9-c0e93dad21cb',
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'JESUS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6010bb65-1e14-4165-b477-cdd10656d236',
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'JIVIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '746e189a-545f-4d0d-8f89-f1bafa28efd6',
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'QUEROPALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '50cc6d99-e23a-4707-a68b-83c2961a643a',
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'RONDOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '643560e0-34dc-43f6-9679-246c07ea5972',
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'SAN FRANCISCO DE ASIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0ec3a2c8-2c53-4309-8392-4145a176c216',
    '93dbb83c-f39c-4a4b-8415-46f37b5f7e60',
    'SAN MIGUEL DE CAURI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'LEONCIO PRADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b4a861d1-493a-404e-8d7e-f3e7fcf68046',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'CASTILLO GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3c808528-e76e-43dc-b087-72bafa3a42c8',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'DANIEL ALOMIA ROBLES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '954fbe8e-1062-4f24-a205-a51f75dbeb2e',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'HERMILIO VALDIZAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ae501e9e-50e6-461e-ac89-2a826408b1d1',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'JOSE CRESPO Y CASTILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '25420de7-ca81-46aa-8c4f-8321ef21408f',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'LUYANDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '31d3edae-4d5e-43e4-9438-473c40f059c1',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'MARIANO DAMASO BERAUN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd01e24f2-226e-4d4c-988e-589889c5a448',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'PUCAYACU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4250ca2b-cbc3-4d8e-ba51-be8a1e4d4544',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'PUEBLO NUEVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f33be039-87fd-42f1-ad71-fa497350fb4d',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'RUPA-RUPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8151efa5-341d-438b-8da9-7b248c74d905',
    '2db4ef05-5219-422d-ae8b-1948f89275da',
    'SANTO DOMINGO DE ANDA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f972b9d4-0937-4f2a-8518-214b457b8dff',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'MARAÑON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7c25ec44-a46a-4657-a52e-cc12e43be252',
    'f972b9d4-0937-4f2a-8518-214b457b8dff',
    'CHOLON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f1532ce1-7dac-4a41-8355-17b75a1ea18c',
    'f972b9d4-0937-4f2a-8518-214b457b8dff',
    'HUACRACHUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'add65e91-a977-4a81-932e-85f647aaaec1',
    'f972b9d4-0937-4f2a-8518-214b457b8dff',
    'LA MORADA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ce067f6a-0ad4-4df7-99eb-29f5fd3f23e9',
    'f972b9d4-0937-4f2a-8518-214b457b8dff',
    'SAN BUENAVENTURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '58f2ed00-e70b-4373-be1a-b0463b292d3a',
    'f972b9d4-0937-4f2a-8518-214b457b8dff',
    'SANTA ROSA DE ALTO YANAJANCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b5d08010-3c04-450d-b338-cf14141eecba',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'PACHITEA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8cc0629b-ec54-4a27-9aa7-51068e475d89',
    'b5d08010-3c04-450d-b338-cf14141eecba',
    'CHAGLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '13525709-955f-457a-b560-8615e3361e65',
    'b5d08010-3c04-450d-b338-cf14141eecba',
    'MOLINO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9bd1ada2-fb4e-4c23-b9ec-62e625a74ae9',
    'b5d08010-3c04-450d-b338-cf14141eecba',
    'PANAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f9a63d4b-ce00-4711-841e-0bf2d1459bc6',
    'b5d08010-3c04-450d-b338-cf14141eecba',
    'UMARI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd1f339af-8e2f-4322-9ce1-c9a10b8c1c89',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'PUERTO INCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd90351a-eec4-4538-8fe2-479dfe9a8bdd',
    'd1f339af-8e2f-4322-9ce1-c9a10b8c1c89',
    'CODO DEL POZUZO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ce496d88-7bc1-4a71-a35e-9e75b6dbb7a0',
    'd1f339af-8e2f-4322-9ce1-c9a10b8c1c89',
    'HONORIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd68db7de-9850-479e-8b76-78f854521e72',
    'd1f339af-8e2f-4322-9ce1-c9a10b8c1c89',
    'PUERTO INCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1bf01147-fa24-4abe-a64f-290de3f56863',
    'd1f339af-8e2f-4322-9ce1-c9a10b8c1c89',
    'TOURNAVISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '351a690e-cf46-4d6c-b4e5-887cdb3820a5',
    'd1f339af-8e2f-4322-9ce1-c9a10b8c1c89',
    'YUYAPICHIS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'fca341f2-e72a-46c0-a0f1-3356da278306',
    'YAROWILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e26bd882-a13f-43d4-9623-433ce7d5df0c',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'Aparicio Pomares'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1fa0b89d-b55e-4635-abe2-82de684b1dec',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'CAHUAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '46da7f51-39a7-449e-8ad3-57c2b4597589',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'CHACABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '94c76dd8-55f4-4d76-af45-097f261fe5df',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'CHAVINILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '46a34eef-5440-4fd0-a945-3fa6040df821',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'CHORAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ac5b56f8-3e18-48b9-b8e3-dbe0ad3cfb6c',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'JACAS CHICO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6fb95517-8b08-4041-b611-b894e96932ae',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'OBAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '396d2e67-f3c3-44ec-90e0-edb51a8da551',
    '3781884e-8ec0-4ce2-ad44-e433d8e0fa65',
    'PAMPAMARCA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'f4acb8c2-4152-47e0-aba3-9f787c808aff',
    'PASCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'f4acb8c2-4152-47e0-aba3-9f787c808aff',
    'DANIEL ALCIDES CARRION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dfadeb2f-1d82-40b9-a852-fbd27278c485',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'CHACAYAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35625b39-68ef-4342-9bad-c2ecd433b71c',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'GOYLLARISQUIZGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '19770d93-c74a-4e0e-b184-ec5a6cd90318',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'PAUCAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69061eb3-9949-4df5-996e-cb40aa230764',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'SAN PEDRO DE PILLAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f4e854e6-b8c3-4e4f-b65f-74ca34252d6d',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'SANTA ANA DE TUSI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6533ea5c-f7d0-4eb4-a00f-c57c232e557c',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'TAPUC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9376a64b-8f4b-4103-a42f-705a75f4402c',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'VILCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35b1fd79-e1b7-4ab8-bbce-8b4175e42531',
    'cde9bf68-046e-41fa-a839-c15541803e10',
    'YANAHUANCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'f4acb8c2-4152-47e0-aba3-9f787c808aff',
    'PASCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65ec577a-9996-4d46-bc8a-7ffb3c59f5a4',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'CHAUPIMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '29b934e2-d5bd-4cdd-8a2d-0ec59f8b5f4d',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'HUACHON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '17dffec6-b4f4-4f4a-828f-7c81abcf6419',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'HUARIACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ade64e1e-85e6-4168-a8ed-36812c444437',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'HUAYLLAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7eb32443-3115-43ed-b32a-77e63e864adb',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'NINACACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e6dcb5e7-472e-44a1-99c2-fd0650f3b954',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'PALLANCHACRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd0a59f4a-c488-45d2-9189-47b2638eab2f',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'PAUCARTAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '734ee05b-ca2d-49bb-8096-cea30ef826ba',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'SAN FRANCISCO DE ASIS DE YARUSYACAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5ad85396-8b55-4ede-b8a3-19f805d8307e',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'SIMON BOLIVAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9de49db9-2e8e-4e8e-959d-16457ec8265a',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'TICLACAYAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9d39f121-aaff-461c-bd6e-0778964c5d4c',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'TINYAHUARCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf6abc63-1eb1-40d2-8f6f-d228a5493b9a',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'VICCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5de2d190-eb60-4b31-8a07-3f254ea83de9',
    '3d051971-d09e-4ebd-b84d-3d7f6f79640b',
    'YANACANCHA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3163b950-00c6-43c7-bf63-8d12f3e90ecf',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'AIJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5614e69-1c43-41f7-8369-2609f21b9fa9',
    '3163b950-00c6-43c7-bf63-8d12f3e90ecf',
    'AIJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd9e1a35b-f159-498b-8a86-b75834dc433c',
    '3163b950-00c6-43c7-bf63-8d12f3e90ecf',
    'CORIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f2874d79-525d-49d3-b2eb-14d21fbe2c31',
    '3163b950-00c6-43c7-bf63-8d12f3e90ecf',
    'HUACLLAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ea5cfa26-dd85-4b81-a4a4-553ff4ae4057',
    '3163b950-00c6-43c7-bf63-8d12f3e90ecf',
    'LA MERCED'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '19ce6b1b-ac9b-4e2f-a447-193d75c9a287',
    '3163b950-00c6-43c7-bf63-8d12f3e90ecf',
    'SUCCHA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '96093db7-6344-400e-a990-ece35f959c75',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'ANTONIO RAYMONDI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '74e46040-427b-4b84-ab46-ea35115b4f13',
    '96093db7-6344-400e-a990-ece35f959c75',
    'ACZO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8976d6dd-99fb-4b4f-aa43-2bf81d46dae0',
    '96093db7-6344-400e-a990-ece35f959c75',
    'CHACCHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dff76c7d-8266-4b15-9d22-05661a33387c',
    '96093db7-6344-400e-a990-ece35f959c75',
    'CHINGAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '95c41b68-ec51-45a4-b783-775580cac152',
    '96093db7-6344-400e-a990-ece35f959c75',
    'LLAMELLIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7bda9729-7f72-4c25-899f-564c12d3e1a1',
    '96093db7-6344-400e-a990-ece35f959c75',
    'MIRGAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4a85e390-e960-48d3-9c7e-e76a6bd3fb28',
    '96093db7-6344-400e-a990-ece35f959c75',
    'SAN JUAN DE RONTOY'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b50f6f7b-ea1e-42a2-8143-acb349141200',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'ASUNCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ac875835-0b37-48b0-84a9-d1addc2541c8',
    'b50f6f7b-ea1e-42a2-8143-acb349141200',
    'ACOCHACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab8bac71-a270-4769-a2a4-b0ac27fc98e2',
    'b50f6f7b-ea1e-42a2-8143-acb349141200',
    'CHACAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'BOLOGNESI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '416d07e1-7145-41db-9aa9-b636b046a34e',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'ABELARDO PARDO LEZAMETA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '512ef4fb-b39d-4cb3-b696-dc22df514e2a',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'ANTONIO RAYMONDI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6efd7a7-5c5a-4066-9621-02da4092e8e9',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'AQUIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '94a0f597-4b0b-4137-987d-8f8ff0602007',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'CAJACAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7a233221-f2c4-4113-889f-1cb86f7aa9f1',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'CANIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8c93bf26-b57a-476d-8857-66c6aa0723c4',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'CHIQUIAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '929f0c10-e376-4b4d-b6b6-05a860420f93',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'COLQUIOC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '94722a42-f8db-43e8-b6c6-271035c4dac8',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'HUALLANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6a4cc4fc-82ac-40f9-aa7d-6ca412542f06',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'HUASTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '34e3a3cb-c39f-4dc8-aab8-315d5271ad4c',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'HUAYLLACAYAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9e4e1173-12c7-4cd7-bb32-06bcdda1f01e',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'LA PRIMAVERA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f25dad92-6acc-4b70-876d-bb94b0d605e6',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'MANGAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '47bf6e7d-2cd0-49be-93b6-847b208904cc',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'PACLLON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '487e567c-d6d5-4eb5-a512-851e04ef5fff',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'SAN MIGUEL DE CORPANQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2e33379-b286-4dd0-af6a-95e268a01f82',
    '7ef9b3ec-9a02-4c92-9096-d0bbff660952',
    'TICLLOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '06c2897a-b096-472c-8639-e76963907c3d',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'CARHUAZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '799172b0-4756-4628-bdb9-8d431cba95f5',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'ACOPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b5b3b1a7-ffb8-435e-8774-97ae0df078a4',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'AMASHCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a8bb2b95-2543-4d8a-bd9b-73734330d572',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'ANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7bab97b9-e8de-429c-8c25-0fc968c962fb',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'ATAQUERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bd013ff2-815e-4f00-a688-7ef20aaca30d',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'CARHUAZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'af437ae0-0be2-483e-a79c-28e251f15476',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'MARCARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4967a951-e878-4158-8bbc-dd4917bdaa72',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'PARIAHUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '45cf7d3c-2b16-41b1-a907-35006a920809',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'SAN MIGUEL DE ACO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2d92c7f6-292c-44af-82c5-c69d99d7f4f8',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'SHILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e1d7a02-8625-41f7-9751-2382c737f092',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'TINCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '502dbf11-8d82-449e-9012-c5a93805836a',
    '06c2897a-b096-472c-8639-e76963907c3d',
    'YUNGAR'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '0c60b226-47a6-443f-b85a-f4d5f67562ee',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'CARLOS FERMIN FITZCARRALD'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7af0b6e4-b937-4255-a7c1-8e4318da42b8',
    '0c60b226-47a6-443f-b85a-f4d5f67562ee',
    'SAN LUIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c1442d34-4ec3-4a84-af25-3031199be90e',
    '0c60b226-47a6-443f-b85a-f4d5f67562ee',
    'SAN NICOLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd7a8389b-9b27-40f3-bf36-797bfc7c3331',
    '0c60b226-47a6-443f-b85a-f4d5f67562ee',
    'YAUYA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'Huaraz'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '836787ff-d377-4cdb-a29b-570a31316eca',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'COCHABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '52baad56-f6ce-45dd-9214-419bcda3b48f',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'COLCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f3b03b17-ae65-49d3-a67a-a8bb37a982c3',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'HUANCHAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9653c97b-3188-4fc7-b073-5e4c9512fb81',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'HUARAZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c63aaa2e-9caf-462d-b4b0-4b52d868b454',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'INDEPENDENCIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f5b01dec-4c3c-4607-8eaa-7a2dcf06178a',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'JANGAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '522cc412-78cd-4bdb-8f38-9d524f73e44e',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'LA LIBERTAD'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ee86dae4-a707-4747-a253-048edbd771e2',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'OLLEROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7651eb6f-0601-465f-bc83-1aefe4a14db3',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'PAMPAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '58215f61-b4e3-472d-937c-903a61f1b497',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'PARIACOTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36dbb79e-a07d-4de7-9bc2-ebf13801f09c',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'PIRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '41287e97-f2c4-47f6-ba3a-71090afeb4a1',
    'fbfd5ae9-1f63-4da1-9b21-9bbed501d753',
    'TARICA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'HUARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54fb1edc-745c-4894-b782-cbca05f91f74',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'ANRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '60ae33b6-79bc-42ba-9777-2434a024e441',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'CAJAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6461f862-2f15-4988-b18c-aeacd1522eb0',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'CHAVIN DE HUANTAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec8213bb-579e-4651-b30f-8fc3aeb30d5a',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'HUACACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '562e36e2-cbca-4997-81e0-3e33b6aa4874',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'HUACCHIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '119f9216-7f32-46f4-80d8-dd76427eebaa',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'HUACHIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8312a747-158a-49a9-b1e7-d2537a526f6c',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'HUANTAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '90e13a3d-e7b0-47f9-9717-aa7fe1315b26',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'HUARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '762a30b4-e0df-4a66-bccf-d4200b48c89a',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'MASIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1eb44117-d15a-40a8-ae9b-18e9a520ef63',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'PAUCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0473cd73-b6d8-479a-bf3e-c5dc21351e2a',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'PONTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8c41e821-16d7-4084-9f90-8e8e9c2094ad',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'RAHUAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb85b252-da2d-4e7c-81c0-cc640cd27518',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'RAPAYAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cad5b95d-0a46-46b2-aed7-65f3a0934e86',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'SAN MARCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a4714208-ec17-41f4-8b84-2b0fbe1acd88',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'SAN PEDRO DE CHANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '25a11c6c-679d-4d9a-a572-4c31b690aeee',
    '22bd68fa-a3dc-4fce-8c47-1856f5a3fe3b',
    'UCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'HUAYLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1ca03fab-6eb2-4e99-8da3-1d02afac319a',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'CARAZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e21be01b-32b2-414f-a4d0-e2445ac94dce',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'HUALLANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18ea7762-fcab-4485-9b16-3e5b828b465f',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'HUATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '83a43b5c-a051-4715-9637-cac72e278e87',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'HUAYLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5fbe1e9-5b8f-4383-84a2-69043e4731a2',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'MATO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6b63e17-632b-4ce4-b549-560dd79db8bf',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'PAMPAROMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3b5ec9f7-87ef-4e11-a6f2-2855f9a7605b',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'PUEBLO LIBRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0135fd7f-2796-411d-a4f2-7bf738087f10',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'SANTA CRUZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e3e8ec7a-29ec-4518-aa9a-94824ed19a31',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'SANTO TORIBIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec50735b-728b-43cb-a2b6-352bf6928d6a',
    '6a92e3ee-c38b-4cf3-a71e-4fdbd73e0df2',
    'YURACMARCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'MARISCAL LUZURIAGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6ebb17e-37de-4a1a-bf72-75bc833b8a15',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'CASCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2b1e25df-5488-4a67-b3b9-ac2b5d6cb0e6',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'ELEAZAR GUZMAN BARRON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35e6ad58-bcfb-4e1d-9654-56aec2448431',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'FIDEL OLIVAS ESCUDERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '881f9104-6bf6-4097-9787-dfa8daea6b71',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'LLAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b2f30623-1e61-4b7e-9e22-df5d246865b1',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'LLUMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f8ad35ec-db74-405a-8af7-ecec861e56d7',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'LUCMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aa300046-d350-4a22-9849-c0c8e5ed0c9f',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'MUSGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7f153c80-176d-41bd-b928-c95421428ce0',
    'ee0fbe7a-ced2-46a9-b6c4-340235b51f8c',
    'PISCOBAMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'OCROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd56c94a-3b15-4132-ab54-fbc12f3839b3',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'ACAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '00885881-9f2c-4586-b453-ce07d86ef49e',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'CAJAMARQUILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1f94009a-7f4d-486b-a25a-f98b02d5c9b0',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'CARHUAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd812dccd-4073-4e5f-a21c-c4c99b0d8edd',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'COCHAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a201d320-c4d6-4e9a-92a1-b35160c0071a',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'CONGAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f373cd30-632b-4df5-a67e-ff22614146b4',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'LLIPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e079eed6-82e5-4d86-b864-dd046ea49a1e',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'OCROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '00250f23-07d0-4827-b9dc-4bc336707728',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'SAN CRISTOBAL DE RAJAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c39d3a74-ac78-401e-9a57-68c5075851d4',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'SAN PEDRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f1d049f9-a8ca-4898-9b48-a3117636ef7e',
    'f65becb2-b6ca-498d-b336-f4394c1e45b7',
    'SANTIAGO DE CHILCAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '052dd083-04a8-45c4-86c9-73e24df7ea76',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'POMABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '749a23aa-d74e-49e8-8308-2e654da1ac80',
    '052dd083-04a8-45c4-86c9-73e24df7ea76',
    'HUAYLLAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b91e3bc-cda5-49b6-813d-fb507b2bddaa',
    '052dd083-04a8-45c4-86c9-73e24df7ea76',
    'PAROBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '60a9d229-764a-4912-9e7f-6d66a8b86148',
    '052dd083-04a8-45c4-86c9-73e24df7ea76',
    'POMABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8975310f-5bcb-4c0f-8b41-91cce0951482',
    '052dd083-04a8-45c4-86c9-73e24df7ea76',
    'QUINUABAMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'RECUAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '893845d9-8684-4ba3-84ff-906b93806927',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'CATAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '97baab11-3901-4524-b970-03ae55d3f119',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'COTAPARACO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9a081f8e-b01c-4059-92b8-56c132b49ca6',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'HUAYLLAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '87a278a1-0423-4a57-9149-74aaa1c97a0e',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'LLACLLIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4d4bac44-e6f8-494c-94e5-1eae58eff628',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'MARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '55978869-8992-400c-bfe3-674e4835c38a',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'PAMPAS CHICO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1b0fd51f-f5ba-4443-8da7-ed559561ca11',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'PARARIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '59c07190-9467-4a7d-beef-9e9127d269f2',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'RECUAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8cefe51a-89fd-4a89-9a97-b5820359a715',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'TAPACOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0410cf31-8ceb-42b2-bace-3f44896ce3c8',
    'e4bb3639-4c92-4101-b405-c7bb75d1ee32',
    'TICAPAMPA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'ee8fd5bc-1f0f-4d79-aaf0-17f721b03e8a',
    'YUNGAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '414033b9-a5f6-496a-83e1-28463d702bb3',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'CASCAPARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '017f732c-5ca0-4eda-90d6-ecc2b2ad5c9e',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'MANCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6894b15-7727-4ad9-8f6f-dc4270351ddd',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'MATACOTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '90b4fef8-ce9f-4033-81ad-69bebb27c80d',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'QUILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8f452a5a-18d0-4168-9d82-2a6f4adb3a44',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'RANRAHIRCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0d35828a-a0b6-4078-a35c-29535efdec99',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'SHUPLUY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '98b57e35-4a87-44f8-8d96-47027480bc32',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'YANAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'efe3abd6-2544-4321-8686-9a16843fc1e6',
    '7445dac1-0f04-4b18-b741-afd7c56d392e',
    'YUNGAY'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'HUANCAVELIC
A'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'HUAYTARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '386dfb17-e635-4ddf-878e-19ba03443dbb',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'AYAVI'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'HUANCAVELIC A'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '6a5c1dc5-ed4e-4b86-9252-64daf084de97',
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'HUAYTARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c9ad73f6-331e-43d8-8671-e4325887ebd7',
    '6a5c1dc5-ed4e-4b86-9252-64daf084de97',
    'CORDOVA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '29c77ad8-93e3-473f-ab5f-a0bf2a70bc53',
    '6a5c1dc5-ed4e-4b86-9252-64daf084de97',
    'HUAYACUNDO ARMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0cbd31e2-bab0-4d33-ad33-0ef607bc3976',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'HUAYTARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '167cf1be-6e93-416e-9576-74ec6c5057db',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'LARAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dc902b8f-598c-4d41-a42c-e2a9eb0b2816',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'OCOYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8de7cfeb-7657-40af-ab51-f95b97984847',
    '6a5c1dc5-ed4e-4b86-9252-64daf084de97',
    'PILPICHACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b902e20e-4cb2-4094-8a87-1f87ec7242fa',
    '6a5c1dc5-ed4e-4b86-9252-64daf084de97',
    'QUERCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd2e81be5-e4ae-4dae-88c3-31d4cdff794d',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'QUITO-ARMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2510a4d6-211f-49e0-9178-90a401ea7b83',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'SAN ANTONIO DE CUSICANCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2fb45aa2-16af-4d59-8639-69d43de757b4',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'SAN FRANCISCO DE SANGAYAICO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e7f05b28-00b8-4236-95be-9ae65866228e',
    '6a5c1dc5-ed4e-4b86-9252-64daf084de97',
    'SAN ISIDRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '24e8baeb-54d9-4d2a-ac3c-66fd9a8bf16d',
    '6a5c1dc5-ed4e-4b86-9252-64daf084de97',
    'SANTIAGO DE CHOCORVOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1414d0e7-2b8f-4917-a581-b1010c1e5c63',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'SANTIAGO DE QUIRAHUARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'def2f3d4-4932-427c-a1ba-261043d9bf14',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'SANTO DOMINGO DE CAPILLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c8961c81-e4bd-4550-b380-d95a7e8b7ab9',
    'c2911b31-169e-447f-bb8f-48f1d1a98978',
    'TAMBO'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '71d303a7-d555-4f6b-b027-15b30e111016',
    'ICA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    '71d303a7-d555-4f6b-b027-15b30e111016',
    'CHINCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6ff2ce95-a9eb-493e-8ae6-3af1aa874c60',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'ALTO LARAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bd42b970-9eab-45d2-8d92-7d9f1a269c71',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'CHAVIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ea7037cd-0263-443e-9b5e-5efe205fd67a',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'CHINCHA ALTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '60266e73-d7ef-4df3-b1f8-63d859d51351',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'CHINCHA BAJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '949bf2e8-3e7b-4bcd-bfa3-dcaa9ef277ff',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'EL CARMEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '830e8655-dfbd-42d4-a90e-0e63f20c2ba0',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'GROCIO PRADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4c476d0b-912e-4224-a20c-71b59f331822',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'PUEBLO NUEVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6252958-6227-4620-930a-656fa4344c88',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'SAN JUAN DE YANAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd826dd80-2bc0-4deb-aee7-1aef1b3e9080',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'SAN PEDRO DE HUACARPANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f02ee927-9562-4b47-bdfe-bc63687af57e',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'SUNAMPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ebd40cf4-462c-4de5-9fb8-1b56ed36632d',
    '9f565c3f-4f35-4904-9502-0c658e991e3d',
    'TAMBO DE MORA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    '71d303a7-d555-4f6b-b027-15b30e111016',
    'ICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0113599a-69a4-462e-9f92-7254313a88d4',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'ICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '48f747b0-c120-4866-88cc-18d32760f727',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'LA TINGUIÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ceb5350c-83dc-42cf-8093-2a0243a46407',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'LOS AQUIJES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54baf1d5-4cb8-42b7-9cde-676873dc74cc',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'OCUCAJE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '567f1147-ab11-4c39-84e9-edc72b691f1a',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'PACHACUTEC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4c2a87a7-b825-4354-9f0e-ae267056f512',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'PARCONA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7ef08ce0-ca85-491b-baea-fc4903e9ce92',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'PUEBLO NUEVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be751e9d-b672-4534-bb6f-6475b3d54a2b',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'SALAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '102164a9-121d-4065-99fc-251d8bd641df',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'SAN JOSE DE LOS MOLINOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '53c396be-91e6-49ff-b01e-b0c7925e5701',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'SAN JUAN BAUTISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4179fa50-4d9f-478e-8267-188872020266',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'SANTIAGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7adba46c-fe4b-44ab-b642-171f033953c6',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'SUBTANJALLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b7523c13-9f31-42d4-a262-1524055c384d',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'TATE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cb9acf3b-c7d4-404c-9acf-dad3a1b3e63d',
    'c1aafbb3-f416-4e44-befa-c0dec26a52e8',
    'YAUCA DEL ROSARIO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f9e6e609-f305-40b0-8d21-f76363221a11',
    '71d303a7-d555-4f6b-b027-15b30e111016',
    'NASCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '368d797f-1fa8-45b1-afd7-ec24274d37f0',
    'f9e6e609-f305-40b0-8d21-f76363221a11',
    'CHANGUILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18a6b25f-11ad-4b5f-97b3-c48e3d126024',
    'f9e6e609-f305-40b0-8d21-f76363221a11',
    'EL INGENIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '53dbe9d2-372e-4202-8ac9-225f491f683b',
    'f9e6e609-f305-40b0-8d21-f76363221a11',
    'MARCONA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3fa3eeb7-a5c2-444f-8f40-7dc8a49ef5e1',
    'f9e6e609-f305-40b0-8d21-f76363221a11',
    'NASCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1b1cceac-bcf7-4527-9084-8da8aca76e32',
    'f9e6e609-f305-40b0-8d21-f76363221a11',
    'VISTA ALEGRE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '4d4991eb-fd7a-4252-a393-68de0d2128ed',
    '71d303a7-d555-4f6b-b027-15b30e111016',
    'PALPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '40eb0179-361f-4484-81fb-9d87cc197dc2',
    '4d4991eb-fd7a-4252-a393-68de0d2128ed',
    'LLIPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b520cdbd-4b18-43f4-a460-4f4681292d98',
    '4d4991eb-fd7a-4252-a393-68de0d2128ed',
    'PALPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fe31623d-5eab-4da0-bf13-515b3eb6a2a2',
    '4d4991eb-fd7a-4252-a393-68de0d2128ed',
    'RIO GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '458a5b3e-356b-44a0-9ad1-d0c7d6c0d705',
    '4d4991eb-fd7a-4252-a393-68de0d2128ed',
    'SANTA CRUZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54c085ee-4cee-4e46-be7a-831e6fc479b1',
    '4d4991eb-fd7a-4252-a393-68de0d2128ed',
    'TIBILLO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    '71d303a7-d555-4f6b-b027-15b30e111016',
    'PISCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c190d8a2-84cf-45c2-8654-ae7e904cae8c',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'HUANCANO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bc9b119c-98e1-4f4f-bbe3-f1da69a95684',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'HUMAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '142bdf61-4dbe-44b3-addb-3937e12d44f4',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'INDEPENDENCIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5259702c-2a74-44f7-9994-dc6b8cad722e',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'PARACAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '94eae1dc-de0a-48e6-9811-4432763d4b97',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'PISCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be6b73e3-0902-404d-b0ad-414aa13e05e0',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'SAN ANDRES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cb538e8d-7586-4c5a-822f-367a9c00826c',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'SAN CLEMENTE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ffe34809-0ac4-4afb-ab4e-b2d84d75de37',
    '8705942d-77bd-404e-b7b9-12d6092964f4',
    'TUPAC AMARU INCA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'PUNO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'AZANGARO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '06bbc9a5-a495-4585-b0b0-df3371eb6a6d',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'ACHAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bcd3de7c-3d29-4334-8295-e6bc4782a875',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'ARAPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b7d6773b-5c00-43c4-83e8-07feca5be192',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'ASILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd0d7c657-1e91-4c6a-970b-57d61063dc8c',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'AZANGARO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ee1be6cb-d09b-4ee0-a16b-268000200884',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'CAMINACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '78874733-7e17-4ac7-bc36-23389a29118b',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'CHUPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd5faa994-d6be-4b6f-b103-3d076ea98782',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'JOSE DOMINGO CHOQUEHUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9d876401-49d8-4870-b6fa-1efd6c099112',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'MUÑANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd43900ee-1961-4623-80dd-22d6209d4a79',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'POTONI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '45a47b48-ac36-45ac-8c6d-96a735745b55',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'SAMAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '45b1043b-d4ba-4760-b25e-7bdb24e1dfad',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'SAN ANTON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '66e7b8a2-2771-4011-bc5c-d9d1f7884a67',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'SAN JOSE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cfd5a7cd-ad6d-4372-a41a-ebccf5541b88',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'SAN JUAN DE SALINAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a587c5a4-f48e-4ca0-8d88-b268fd9fe0f4',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'SANTIAGO DE PUPUJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2f58f752-9023-4846-9d57-f46fd8324bd1',
    '9dc15907-86d8-4779-ace7-aca9da6769ad',
    'TIRAPATA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'CARABAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6297737e-1bd4-48dd-84b0-2cde9972fb59',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'AJOYANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6f474822-c5e6-40aa-8b38-0da5138c27fe',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'AYAPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f4b469f2-0d42-4229-98bc-deaa74c1daf7',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'COASA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f27f506a-309a-4917-ba57-73b5cf7b46c4',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'CORANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '072b3fda-3773-491c-913f-35c46dac7fd7',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'CRUCERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '499efe22-7113-4c79-9b1c-52190d7ab45b',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'ITUATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '04f0eac7-8e6c-47e2-b9a3-e1cf1ecad71a',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'MACUSANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c13b46ec-0983-4c37-b856-a3a4703b20ce',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'OLLACHEA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1465634a-a94b-4c86-9f4c-80cbc684366c',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'SAN GABAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c8b60a55-5ac4-43d4-879f-20284412f451',
    'fbc00489-b5b2-4eb8-8759-87a6bd5bb4d1',
    'USICAYOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'CHUCUITO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65915de6-fa05-44ab-b218-5cc25b2ffe65',
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    'DESAGUADERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36e0dc99-97c2-44db-8390-77dba5cc5726',
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    'HUACULLANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '29a71d44-7c15-4448-854d-32d7e0196d02',
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    'JULI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '22c0f760-392b-4571-9f42-f84122ebc2af',
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    'KELLUYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '472402c7-a32b-438b-aed0-4f175aec5b5e',
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    'PISACOMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93eaf344-88d8-492e-91e8-dd8884bc1328',
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    'POMATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cc36a5ed-6f9d-4ac1-8022-494ce8c5f4cc',
    'fdb29a6f-0b77-463d-a368-e7b09292772a',
    'ZEPITA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3d97b4db-9076-43d9-ab2d-7ceef32a1a44',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'EL COLLAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'acebeb02-7469-4398-9726-61f954bf55d1',
    '3d97b4db-9076-43d9-ab2d-7ceef32a1a44',
    'CAPAZO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '24232b64-32a3-4824-a4d2-d49dba877344',
    '3d97b4db-9076-43d9-ab2d-7ceef32a1a44',
    'CONDURIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65b3d934-8626-46ce-9abb-e4d8946ab556',
    '3d97b4db-9076-43d9-ab2d-7ceef32a1a44',
    'ILAVE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '81bceac7-e0e1-4ca3-a3ac-3ba82bc1dc95',
    '3d97b4db-9076-43d9-ab2d-7ceef32a1a44',
    'PILCUYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38eb3370-d776-48f7-aa9e-b75d7b29b463',
    '3d97b4db-9076-43d9-ab2d-7ceef32a1a44',
    'SANTA ROSA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'HUANCANE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9219b93a-f8f8-461c-8420-df06e88530e8',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'COJATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '900d54d8-c76f-401a-ada0-5d19f37f5e4c',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'HUANCANE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '456ab735-1069-42fc-b60e-4dc288cc4fb7',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'HUATASANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '57d85544-0d69-40a7-9c31-5103e826c674',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'INCHUPALLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '74d4326a-81fb-4098-8823-92d170b0a880',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'PUSI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c06214a6-f042-49e9-8560-f3523a95b307',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'ROSASPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '33286d1e-a042-477f-8e01-a99d0f906437',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'TARACO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '040a4ddf-dff5-4c7e-9e87-c8b9fe87a61d',
    '72c77832-5d1e-4599-ad08-397f5d47267b',
    'VILQUE CHICO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'LAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fdff80fe-163b-4b89-a1a4-83f7b84b6471',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'CABANILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '87890fd3-dcef-493a-a538-70ccb28cec40',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'CALAPUJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b74fd0a4-b77b-41fe-aa73-7a52efd21905',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'LAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '262aa1f1-7b1d-4741-8201-6a9b356bded1',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'NICASIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '20581bf2-2055-46f0-9c07-48d7460f2982',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'OCUVIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '14b15bc5-8044-44f3-b462-d8e80530c1b3',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'PALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '68dc619b-7936-4b75-964f-68287be061a9',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'PARATIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4c21efd9-bbe0-40b7-868f-ffe9c1d51c58',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'PUCARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '33e3282a-f732-4ed4-bafc-9214f4e1f8c5',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'SANTA LUCIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3ad29103-91e8-494e-85e2-5c26df46b8bd',
    '79c9954f-68ea-4d95-82cb-f8f324771a96',
    'VILAVILA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'MELGAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '008ced12-5c04-4740-847d-457ecc624a2a',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'ANTAUTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd4d57dc5-c541-483c-90eb-bd58032d202a',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'AYAVIRI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6ee422a5-e731-413a-94f4-c201796ceaa6',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'CUPI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2066989-7858-4064-90a3-d6d6f230e5ac',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'LLALLI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8db1e5c0-282a-4b30-b6e9-2bf4bb98120d',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'MACARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5daa5e01-9d0b-4b76-9e9c-4a980855024d',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'NUÑOA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'da872963-c145-4391-9c22-d6344997ba55',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'ORURILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c4ea08d3-dc45-465e-b08a-9a19ced67116',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ba989291-dc42-4fd4-9f9b-42a60b332e0a',
    'a0e111ad-8a4b-4f89-b43f-3bd93e42736a',
    'UMACHIRI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'a68dabf0-c07f-42d6-acd7-7bb8520a3e59',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'MOHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5bb7418c-adf0-4ce1-ab8f-dd152da00dd3',
    'a68dabf0-c07f-42d6-acd7-7bb8520a3e59',
    'CONIMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e06f6ca2-616d-439e-9ca3-28ea4d6ab501',
    'a68dabf0-c07f-42d6-acd7-7bb8520a3e59',
    'HUAYRAPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '876b0ec3-9b6c-4530-b634-2755904c445b',
    'a68dabf0-c07f-42d6-acd7-7bb8520a3e59',
    'MOHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f6681532-1efa-4d74-9d6b-c9683ec33c52',
    'a68dabf0-c07f-42d6-acd7-7bb8520a3e59',
    'TILALI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'PUNO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2bef936-503c-4f61-8ad7-8b196f8c979f',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'ACORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f8cfbdbf-c58d-4e38-bf46-56e8df889f40',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'AMANTANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '299995a4-8ea3-40ad-9fb0-b79f073942e5',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'ATUNCOLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8460dec6-6c70-4252-a481-8e054c357578',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'CAPACHICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '761a3ce9-a26f-4e4f-a57d-12fe591841b7',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'CHUCUITO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c14ff3a1-21a2-487e-8ca8-70e45e44c174',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'COATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '76177c72-0561-456c-a65f-2e3577813507',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'HUATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ce33047b-1186-4dcc-90cf-d58bec13376a',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'MAÑAZO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '14c74866-9495-4ea9-a419-47e935069d4d',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'PAUCARCOLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '99055f7d-3421-4017-868f-617372df72ac',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'PICHACANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3f5b231a-104d-44f5-864d-d4b9b5b400bb',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'PLATERIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ad5e564c-cc1e-4c3e-ae02-c842ea53b44a',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'PUNO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '210fbb2e-b278-4a06-93cd-57c35a8354fb',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'SAN ANTONIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '22fdc39f-986f-44ed-af6c-7b1dbba39a20',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'TIQUILLACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '79a50668-d808-4661-ac9e-2341c342bfbc',
    'c1343d7c-4514-479b-82be-3f84c7e4ebcd',
    'VILQUE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5188dfd8-b145-4047-b391-c7a13b8c59f8',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'SAN ANTONIO DE PUTINA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bc974f35-90e6-4306-b0ee-c46fd737b596',
    '5188dfd8-b145-4047-b391-c7a13b8c59f8',
    'ANANEA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf82c7bb-8b30-490d-ace9-1ec2e212a00a',
    '5188dfd8-b145-4047-b391-c7a13b8c59f8',
    'PEDRO VILCA APAZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '42ccfee7-a44e-4e92-9cb4-3629b06cddad',
    '5188dfd8-b145-4047-b391-c7a13b8c59f8',
    'PUTINA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf91c69e-0031-46b3-a74f-24a0c6a8da4c',
    '5188dfd8-b145-4047-b391-c7a13b8c59f8',
    'QUILCAPUNCU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1178d1c1-83ec-46c5-ab46-d0fa91bb0aa9',
    '5188dfd8-b145-4047-b391-c7a13b8c59f8',
    'SINA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'a48eec3a-8c21-422c-a725-f26cf220b711',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'SAN ROMAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b7cf4ff-cd36-4771-b549-dc5d6b691e62',
    'a48eec3a-8c21-422c-a725-f26cf220b711',
    'CABANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0663ae71-5023-4e4c-89ae-11686718e9c4',
    'a48eec3a-8c21-422c-a725-f26cf220b711',
    'CABANILLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1b036945-a3b6-4aeb-b569-cc48578267bc',
    'a48eec3a-8c21-422c-a725-f26cf220b711',
    'CARACOTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd93c8e2b-34b8-4706-b943-bf9e0823be5d',
    'a48eec3a-8c21-422c-a725-f26cf220b711',
    'JULIACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '954ca468-8021-4444-a3fc-3deae2ccfb26',
    'a48eec3a-8c21-422c-a725-f26cf220b711',
    'SAN MIGUEL'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'SANDIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd2adce78-b5ad-4785-92e5-d32dbf111cc4',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'ALTO INAMBARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4dd5d37b-ed8d-47e6-baee-f0c5fa4d2525',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'CUYOCUYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a3e6abc4-1a07-4dad-ab5f-0bf6692aafd4',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'LIMBANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6eb1f51a-9eb0-4e43-9f91-22b6fb561a97',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'PATAMBUCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '803f2ebd-2cb7-4f82-a211-1b9b50476ab2',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'PHARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b66bb47-8156-40b7-ba41-d9c1a8628652',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'QUIACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fdfc455c-8901-4316-8248-7f5bd7fc9941',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'SAN JUAN DEL ORO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'af068a1b-f7c8-48ab-a6b2-ada452d1971a',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'SAN PEDRO DE PUTINA PUNCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ca1af6cb-9904-4450-a138-fedc6ea94a7e',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'SANDIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '612b7a70-4385-4a52-a3e8-e1ae7b03f35b',
    '22d8e07c-3f14-4ea7-ae3e-ec1f9160ce06',
    'YANAHUAYA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    '769b9b2f-c9a4-448d-ba13-55d5961eeec6',
    'YUNGUYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '94145f1d-ad95-4063-9de9-88f9ba3efdb3',
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    'ANAPIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '708490a6-cfa5-484f-b75a-45ad4b562863',
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    'COPANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9d55b4ef-24c6-46b1-917d-e364d65a2827',
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    'CUTURAPI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b332edf6-deef-425e-965a-777a19193eaa',
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    'OLLARAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b4a58add-8a6c-4931-81af-c77ff3fe036f',
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    'TINICACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1b9f5a20-a9ed-4713-b0bf-a615e334503b',
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    'UNICACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec582da9-71d1-4c10-b109-26b9bb01438a',
    '98e51250-94ca-48b7-bdac-e24d078075fb',
    'YUNGUYO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b2733af5-8d31-4ee2-a347-54ca07515603',
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'ACOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1095a6bc-a456-48e8-8a9f-0993d5ceb3ba',
    'b2733af5-8d31-4ee2-a347-54ca07515603',
    'ACOBAMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'c24f7605-5672-421f-9655-29181abd63b5',
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'ACOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '99249fea-f94f-4650-9e96-0e5322869e00',
    'c24f7605-5672-421f-9655-29181abd63b5',
    'ANDABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2b393895-9244-4242-af1e-23800d77e6b7',
    'c24f7605-5672-421f-9655-29181abd63b5',
    'ANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eb05ad90-bb62-429e-aca5-126755faa114',
    'b2733af5-8d31-4ee2-a347-54ca07515603',
    'CAJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36301758-621e-4914-83b4-b3e5a4537bd0',
    'b2733af5-8d31-4ee2-a347-54ca07515603',
    'MARCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '480fd930-9ad9-4164-86dd-10dedebb4ba2',
    'c24f7605-5672-421f-9655-29181abd63b5',
    'PAUCARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aee7a196-5632-423d-b452-40d145a03943',
    'c24f7605-5672-421f-9655-29181abd63b5',
    'POMACOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '227137f3-785b-4a1d-9cee-9fbed27088fd',
    'b2733af5-8d31-4ee2-a347-54ca07515603',
    'ROSARIO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'ANGARAES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8000d3cd-6521-4cb8-899c-a82699103b3d',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'ANCHONGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72101ebd-0bf3-447f-ab58-c7486ff950e2',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'CALLANMARCA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5def1bad-8884-4de8-bedf-5f09733159b9',
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'ANGARAES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cde2b77f-bb5b-4ffc-b12c-3c1a369245d1',
    '5def1bad-8884-4de8-bedf-5f09733159b9',
    'CCOCHACCASA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b7d75370-13e9-4b0b-9a47-37ab3c41dcf4',
    '5def1bad-8884-4de8-bedf-5f09733159b9',
    'CHINCHO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ba6b7183-4514-408c-a19b-e371d6490c7f',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'CONGALLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f8ca5905-9617-414d-87e1-9ccc38df4a6a',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'HUANCA-HUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3720f6ad-d6c1-4ecb-a79a-a365a2d66172',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'HUAYLLAY GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c9c501da-8bc5-475e-81d7-a0577890edb0',
    '5def1bad-8884-4de8-bedf-5f09733159b9',
    'JULCAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '20c1f55a-4134-44e1-adc7-25d9ba3c53ef',
    '5def1bad-8884-4de8-bedf-5f09733159b9',
    'LIRCAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7f338572-f954-4979-85c0-635b533af872',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'SAN ANTONIO DE ANTAPARCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab380cbd-f833-416e-afbb-a9f5569ebd1f',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'SANTO TOMAS DE PATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd34665f9-41ff-488a-8993-a7c5dbbc2984',
    '3b2031a7-e998-44ad-a58e-252b5f7ec7a1',
    'SECCLLA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd59d3309-b02e-4c98-8a94-408ea7c2b0b1',
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'CASTROVIRREYNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3fbde217-d4a0-4d7d-9c24-9a4b98a864b3',
    'd59d3309-b02e-4c98-8a94-408ea7c2b0b1',
    'ARMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ddbd13b5-f59c-48e4-9e69-21c8c8a0fe15',
    'd59d3309-b02e-4c98-8a94-408ea7c2b0b1',
    'AURAHUA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'CASTROVIRREYNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '11bded8f-6136-4d96-a97b-0a6e0acca782',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'CAPILLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '96db0c97-360c-4b9b-a169-69907f27b9ad',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'CASTROVIRREYNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '897d2c2c-295d-4b16-a8be-28a3bb5d53b4',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'CHUPAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ad8ef4ba-c31e-4d9d-abcd-513ec70ede58',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'COCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '43da2c9c-76a1-4ac2-b52c-2c4ebd3ebef3',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'HUACHOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a9c3ffe2-45f6-4d6c-bfe1-9dcce82c0a6a',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'HUAMATAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '837c53f7-8e1a-4ba9-8cd2-970c407e1446',
    'd59d3309-b02e-4c98-8a94-408ea7c2b0b1',
    'MOLLEPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d73c14e-7a95-48c8-9a86-3a6b059d365e',
    'd59d3309-b02e-4c98-8a94-408ea7c2b0b1',
    'SAN JUAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72ec2ddb-9b2f-47c7-aa11-b29ed2a88640',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'SANTA ANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b04bf47e-0e84-4dd8-91a0-0dc8a4acec19',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'TANTARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f186884b-9b7b-4240-9b2d-4bcf941e2591',
    '49e90adc-495c-4e55-ab5b-7ebedc0e4c82',
    'TICRAPO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd8f0a208-0ea3-4975-ac5a-bcdc2149b7cd',
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'CHURCAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'edea8b63-e81e-48b4-8cf3-940f38470d49',
    'd8f0a208-0ea3-4975-ac5a-bcdc2149b7cd',
    'ANCO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'fb1b9d98-9248-467a-9282-37aa183d3dd3',
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'CHURCAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2034e017-c44a-4709-9a7c-7ba28c04d781',
    'fb1b9d98-9248-467a-9282-37aa183d3dd3',
    'CHINCHIHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '44520a59-b630-4c2b-b997-603b2facc49c',
    'fb1b9d98-9248-467a-9282-37aa183d3dd3',
    'CHURCAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '80448bb2-e2f7-4540-8e72-a389227dcd11',
    'd8f0a208-0ea3-4975-ac5a-bcdc2149b7cd',
    'COSME'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0e82529-e654-4677-b519-87c30a7a61b1',
    'd8f0a208-0ea3-4975-ac5a-bcdc2149b7cd',
    'EL CARMEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3b00c929-e2ea-4a6b-990c-fd3908842993',
    'fb1b9d98-9248-467a-9282-37aa183d3dd3',
    'LA MERCED'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '23222f8b-9516-4f13-befe-81d935469434',
    'fb1b9d98-9248-467a-9282-37aa183d3dd3',
    'LOCROJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'af37fd7e-754d-402d-8960-64ec3fef2876',
    'd8f0a208-0ea3-4975-ac5a-bcdc2149b7cd',
    'PACHAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '48e9f835-cce5-4f9b-acee-a2bb1ac9c1e1',
    'd8f0a208-0ea3-4975-ac5a-bcdc2149b7cd',
    'PAUCARBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8431b1f5-ef6a-4ba1-9e38-89f0895bd3b9',
    'd8f0a208-0ea3-4975-ac5a-bcdc2149b7cd',
    'SAN MIGUEL DE MAYOCC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8024f36d-0e25-4e38-b73a-bbb55517ec44',
    'fb1b9d98-9248-467a-9282-37aa183d3dd3',
    'SAN PEDRO DE CORIS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'HUANCAVELICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ceb066a9-79f7-408b-a80c-6acd9271cee3',
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'ACOBAMBILLA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'HUANCAVELICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eb553e04-d35f-48e0-a947-91b404369680',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'ACORIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3521fdff-142d-4b8b-8e5a-56a16bb858a7',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'ASCENSION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9350e1c5-b237-4234-88a3-0603ab0662a5',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'CONAYCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '90ab6179-c671-4ac2-9834-8395a7ebce80',
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'CUENCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12833e34-b41f-4717-baa3-bb089b7bb653',
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'HUACHOCOLPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '280b6c30-fa93-4f26-8906-e54d9d2e6c24',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'HUANCAVELICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '08c57759-1ea7-4f17-a1f7-fde1b3231b7a',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'HUANDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd1b02cd7-73f8-4d5e-95dc-83508b271eb9',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'HUAYLLAHUARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '91ce2cd5-acd0-4c34-b6b9-2aea47f8aa0d',
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'IZCUCHACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c4bee7c7-a689-4a74-bbf7-46b8e8b90107',
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'LARIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6b212130-f91e-42fe-b63b-c8b0fd23a4b2',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'MANTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6336df39-23e1-48eb-bf09-b7b5a8ecf05e',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'MARISCAL CACERES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12f9912a-7e8a-464f-9ad1-3fc7833130b2',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'MOYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec693d9c-8b8e-42e8-9ffa-c18dd3bef3d5',
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'NUEVO OCCORO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b505f4d7-b5ea-4a0a-8c08-402ad549b858',
    '7ded6773-d5e5-4cc7-b8e7-403d267ca173',
    'PALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '87820078-c37e-4102-a6de-65579822a2e4',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'PILCHACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3b8ce5e0-d236-4c4e-b810-7e34603131d7',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'VILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cae827f6-96b6-4bf9-b7b1-e3edd685e920',
    '5dc64804-2406-45c2-8a4d-088c05a32fad',
    'YAULI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'b7712db9-7a1f-4788-ac7e-74acf6613259',
    'TAYACAJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7af36463-b870-431f-a042-812ba23da671',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'ACOSTAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eb7d413e-9576-4f7b-ac6e-848a8ac61389',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'ACRAQUIA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    '35537c08-2860-4890-90a9-8392eaad65c5',
    'TAYACAJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd55a6474-a2d5-41d4-88cb-9f87ab917e64',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'AHUAYCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c257187e-ae8d-469a-bd60-eb5459750521',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'ANDAYMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0e8f0bb3-d0da-4f7f-a074-256d6029c7c9',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'COCHABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0ab6873f-7854-42fa-b0b8-e43e42e5cf86',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'COLCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69e41d92-0cc2-403a-88d8-9964fe90dd2d',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'DANIEL HERNANDEZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd4089c4-32d4-40d1-aba2-4627c32cb6e3',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'HUACHOCOLPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '288b2650-eb80-4030-b3f9-53c5c4892054',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'HUARIBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4e659de7-08ec-4ba9-bf9e-a786ed2315c5',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'LAMBRAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6e0cff92-8223-4216-9abb-d9f185f41fff',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'ÑAHUIMPUQUIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '705d0f3c-7acf-4c99-a543-80241a703cbf',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'PAMPAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72e605da-0749-4607-a2e8-b11889db8184',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'PAZOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'acb378ac-5e0a-4d85-895c-c0f9a33a545d',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'PICHOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b6fc1561-4dd0-43fa-bb47-969db4bea40a',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'QUICHUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a7159d99-52df-49c7-95f7-94d853743391',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'QUISHUAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a90148ee-2094-4dc7-aade-d67ff4b47142',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'ROBLE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f374b2d3-ea28-4797-bf05-e264bd10d68b',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'SALCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '26a459df-708e-4012-ba6d-001a2db6fe7b',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'SALCAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'daa438f9-b9d2-415b-8810-76388dd0596e',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'SAN MARCOS DE ROCCHAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a23d0a1b-4cc5-40fe-a3eb-53cb9c2f29df',
    '848a1e5d-28c3-4920-a5f6-368c628dfbae',
    'SANTIAGO DE TUCUMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2de1f573-efd5-4285-9fe4-7524255b1d5d',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'SURCUBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18beed7b-ad4a-43a5-9587-221fd38715c7',
    'dc4217a6-66fc-484d-8f1c-ea75531366f4',
    'TINTAY PUNCU'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'JUNIN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '6a4c56fa-6e8b-4162-9b7f-147162150c75',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'CHANCHAMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3c2e6e13-189d-4da9-85c9-7e38b988df15',
    '6a4c56fa-6e8b-4162-9b7f-147162150c75',
    'CHANCHAMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a7a21dc3-ab5a-43fc-9a3a-02f8f3ac50a1',
    '6a4c56fa-6e8b-4162-9b7f-147162150c75',
    'PERENE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '48952943-0767-4b89-ae75-52de166a107f',
    '6a4c56fa-6e8b-4162-9b7f-147162150c75',
    'PICHANAQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'de21dc97-ac75-422f-833f-0df5d445a18b',
    '6a4c56fa-6e8b-4162-9b7f-147162150c75',
    'SAN LUIS DE SHUARO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cadcee56-7cd6-4861-b616-03ed401037d0',
    '6a4c56fa-6e8b-4162-9b7f-147162150c75',
    'SAN RAMON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b74faca-a8ff-4601-8dbe-c254833f7e48',
    '6a4c56fa-6e8b-4162-9b7f-147162150c75',
    'VITOC'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'CHUPACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9008273a-7eb1-435d-892f-a10acf1e6795',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'AHUAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7f9a5037-fa27-428b-a470-cab70caadb8e',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'CHONGOS BAJO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd4d9ba32-99b8-41e6-8edf-0d62396e98f6',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'CHUPACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '84a051b8-bcf7-42c4-bc0e-70065e40fa05',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'HUACHAC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ace18ebb-5b0d-439d-9f2c-65d2e94e8c56',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'HUAMANCACA CHICO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '19074080-a952-4a64-bae5-8ada1452ac59',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'SAN JUAN DE ISCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a16c0825-9e1b-44e7-9aad-b446865e2c0d',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'SAN JUAN DE JARPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0893fa9e-c201-44c3-9ee9-9ed66c0aae94',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'TRES DE DICIEMBRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0ec4544f-2d17-423b-a5bc-739b6a4a6dda',
    '9ecddc9e-89c5-4d96-bbaa-19d397180191',
    'YANACANCHA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'CONCEPCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '24511e36-cc19-47cc-92b5-58bcfd52b82d',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'ACO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0da5f0dc-d260-4270-93a7-c7b7c30aa8e5',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'ANDAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bf64dbb4-c74b-4194-83b9-09fa61bb1a08',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'CHAMBARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6c7e84d-f217-468e-b3ec-ea927e9301ec',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'COCHAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0d6efd59-0001-4d15-acc7-03887a95bcf5',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'COMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7d76d94c-8025-4956-8229-0de36a90878f',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'CONCEPCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0b3695d0-efba-4ebc-834b-7615d499ce64',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'HEROINAS TOLEDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd29b3d32-2f51-4c30-911a-ffc795f8c3b1',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'MANZANARES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '39f94fe5-61bc-4caa-862d-1d323ac7cdcd',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'MARISCAL CASTILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '243cdc54-01a3-49bf-9cb4-199f30a1d04d',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'MATAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b8bfc129-046a-40d1-bc74-fe72d6d8093f',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'MITO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12f8fa28-540b-4a6c-bb56-82c924dd19b8',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'NUEVE DE JULIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f57b8c06-96a2-4b38-b24f-19f022a7776c',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'ORCOTUNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3ab1c067-e987-4d7d-9859-a56d2cb9cc71',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'SAN JOSE DE QUERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd0a00b19-84c4-486b-b628-8fe18dfa0409',
    'ffb92654-7644-4e41-9a2e-1f79620d5fef',
    'SANTA ROSA DE OCOPA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'HUANCAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '10bc3ce9-71f7-4157-8e57-d246f0cb6903',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'CARHUACALLANGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab99830a-1170-47e5-881f-5680bc9b8039',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'CHACAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4f3a8ed0-b9c7-483c-bcce-50ad3f906dc0',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'CHICCHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '08d3661e-0d4c-45c4-8edc-07bd78fd78e4',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'CHILCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '662609c2-2328-469a-990c-23ad786a9128',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'CHONGOS ALTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '19922265-da39-400b-8b77-abc9f515b48d',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'CHUPURO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5a49343e-c108-450d-95c1-3a759a308b1b',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'COLCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a4d3343c-7131-41d9-8f8a-43b79df49578',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'CULLHUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd3efa0fb-d47a-4c8b-a1fb-1e17b619faf3',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'EL TAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd971483d-9c39-4d45-867e-94606e63ad57',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'HUACRAPUQUIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '37da5636-95dd-47e2-8ef3-cf9e1bdf8ec4',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'HUALHUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '64ba5898-052d-4b1b-9a2e-4c5debf3c8ae',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'HUANCAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '02ceea3c-8d7b-4a48-b19b-589f15955c00',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'HUANCAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54699062-8f24-4644-ab67-2249459894cf',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'HUASICANCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dd0e18dd-b463-4cda-83f2-e58ade173298',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'HUAYUCACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4c68ece4-0d23-426b-876f-d83e16fc2a81',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'INGENIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36a37b7e-1ecb-48af-af6a-dfc26a96c253',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'PARIAHUANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '456eb845-69c4-4f42-9734-4f6980230f97',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'PILCOMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '455cd1d6-1de1-496a-8f85-bb99d5b8f168',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'PUCARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b44d5ff1-ac95-40c6-9bc6-4760a5030567',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'QUICHUAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f1052497-e123-4daf-bf3c-a280e435419b',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'QUILCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5f3d9f6c-f5ac-41a1-9a17-96395ea1163a',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'SAN AGUSTIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38739cdb-6f81-486b-9e9f-f3e1140cc64a',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'SAN JERONIMO DE TUNAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a9abe5ae-8eee-4fd1-9316-a08e1331a386',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'SANTO DOMINGO DE ACOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b8fb3dcb-683d-4bb7-8b15-3a4e2892bb00',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'SAÑO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9ce4084a-5d4d-452f-ba5c-c19ef9f5d7a7',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'SAPALLANGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fc3a78a9-1baf-4f8f-96f6-b8709a1e1e80',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'SICAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f3e10a6d-27d4-4739-a353-eb4d3c1d3cb1',
    '39f7bd83-3b80-43bf-a61f-294b833553c4',
    'VIQUES'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'JAUJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0977828-9189-4ee4-ba48-98a65b0b6598',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'ACOLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72d568f7-9067-4ed2-80af-392bc6bf0e6e',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'APATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '32860314-4d4a-4e59-8c6b-5aff1a369237',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'ATAURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69b6895a-93da-4fc0-a167-0167d49a3544',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'CANCHAYLLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '677009f1-85f3-495a-bfcd-04c7b0d9f75b',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'CURICACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '991f68e2-ca1f-48ae-98fb-558bff6c538c',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'EL MANTARO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0f7f6284-aa22-434f-8f44-b1286adfde59',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'HUAMALI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9aa084c5-c381-4840-bc62-3b86a40a646a',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'HUARIPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '304f8bcb-9106-4585-a48e-a77fb86efdbd',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'HUERTAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ea46be02-2978-42f4-8cb9-5c1fccbfe300',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'JANJAILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fb3d3283-2c04-49dc-88ab-d6ebf0fb109e',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'JAUJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54fa34e0-f721-4f3d-bb8f-0eaf11b1c2c5',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'JULCAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '094c7e17-bf2e-427f-bdd2-4297bf6fc674',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'LEONOR ORDOÑEZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '04e87eb2-9135-4118-9ea4-1f71eea6149d',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'LLOCLLAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4e0c7cbc-a529-487b-94c1-b49880f49569',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'MARCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dde1df9b-a72d-4182-8ac0-2a474ccefed7',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'MASMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '60f46a2e-174a-49d4-9b3d-af15f145e43b',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'MASMA CHICCHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '226c3c0d-8251-44c8-8301-f8eb6adcf5a1',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'MOLINOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b9c7e48-350f-4a60-94c0-2639b45dadbf',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'MONOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '43980639-eb3c-4faf-ab09-61e7eb4e367e',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'MUQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1f78387b-79b3-4b05-bf92-ae3a809be889',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'MUQUIYAUYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9e539b61-8da6-4068-8b50-f7ca376403eb',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'PACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ed2eb6be-f8b8-4001-8549-5a3a5d55ce05',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'PACCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c03c20f9-a645-42c4-9975-451b22731b7b',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'PANCAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c0009dd6-d345-4d8f-9f61-d7386f25d069',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'PARCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '72562d06-0aa5-40df-828a-f9fe42fdf3d7',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'POMACANCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '74fa8170-a49e-44b6-af26-a7e016b1f26e',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'RICRAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a0a27e75-80b8-43d6-a279-0172a9beda0f',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'SAN LORENZO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d98f761-6454-4251-8700-7247fb91d852',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'SAN PEDRO DE CHUNAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '793eb13b-f75d-4321-bda9-67a5377a0ce2',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'SAUSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '86c7c464-8be1-4d43-8bb4-99ad41936a96',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'SINCOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fb6a73d0-0543-4d27-9f41-abd4d502ca87',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'TUNAN MARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '30bbd312-5030-479c-a53d-fadc4148edd3',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'YAULI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '45b4aa81-e82a-4cd5-bb4e-32b8d18aff12',
    '42562b98-d6ae-4965-a983-6e831108a2eb',
    'YAUYOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'cda63aba-c6f8-494b-ab9d-e282a4eb9965',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'JUNIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'efe0f89b-4150-47f6-8592-38e17b332cd9',
    'cda63aba-c6f8-494b-ab9d-e282a4eb9965',
    'CARHUAMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '63d77980-681f-4f00-b011-58739a84d9a7',
    'cda63aba-c6f8-494b-ab9d-e282a4eb9965',
    'JUNIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ee3702ae-b927-4457-aa0b-02f963e47224',
    'cda63aba-c6f8-494b-ab9d-e282a4eb9965',
    'ONDORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fe138071-1fab-4b3c-990b-bf50de17fd5a',
    'cda63aba-c6f8-494b-ab9d-e282a4eb9965',
    'ULCUMAYO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'SATIPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0fcad6b6-a4df-486c-9513-f0ec047c7348',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'COVIRIALI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2fa98434-a0ef-4864-9a27-cc38591dd256',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'LLAYLLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf54ff95-92b0-44b1-8cc2-f648a33c804a',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'MAZAMARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5e7c4f06-6d13-48d3-99d8-7ce205d920ce',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'PAMPA HERMOSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '066f86eb-3ff5-403c-894d-ffc971cc6725',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'PANGOA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7475e63f-0521-461b-ba62-b13a969d401b',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'RIO NEGRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93767a4e-d534-4110-abb3-71125beaf9dc',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'RIO TAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5a33ff5b-caac-43b8-818e-f4b10297bfd6',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'SATIPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5c54233-aeef-40d9-aba1-2327399ca7b8',
    'e59d1d9c-5445-4525-a40b-47e5747b440b',
    'VIZCATÁN DEL ENE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'TARMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ead33199-c0c4-4fc4-8b74-2a22fd69b846',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'ACOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a638f1c5-c1ca-4fc6-8e36-c124d645515b',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'HUARICOLCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5eae5beb-e61a-4ab2-92c5-baf3e0ce6aae',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'HUASAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cc9633e8-e86f-40f1-a007-d4ec1c4bdf14',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'LA UNION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd3bcc99b-ac44-46b6-8f2e-1a0049e33ef0',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'PALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4f311e35-a53e-4cc2-aa6b-a61bbd28930e',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'PALCAMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b199191-7cf1-48fb-94f5-ac225d5be4b7',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'SAN PEDRO DE CAJAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0262d6d4-df9b-4a80-a064-2aaaea8d02a5',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'TAPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b10e023-bea0-4329-8250-fc84ce22b9b3',
    'bd20c989-0fb0-4235-bdc1-945ade524816',
    'TARMA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'ba2be198-6a86-49c9-a750-8d2897077f81',
    'YAULI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9b13faab-fb38-40f7-981b-c1e244461cea',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'CHACAPALPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '06c4ec66-c6b6-4ef0-a824-85249e6fa2ff',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'HUAY-HUAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '80835db5-5349-4f63-8d88-5978067be73e',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'LA OROYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '232cd4f7-8a9f-4b07-b0cc-df4446161df4',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'MARCAPOMACOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3bd17165-ff0c-4d15-b786-6cfe9ac2b077',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'MOROCOCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '86f281ca-dc58-4a88-aad8-ca96cec8112a',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'PACCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8a262389-f30b-494e-add6-abafdd10adb3',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'SANTA BARBARA DE CARHUACAYAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '67ee1fe6-6499-4672-a663-c146d3b36075',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'SANTA ROSA DE SACCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1abe76db-9032-4b55-a009-18887cf1b144',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'SUITUCANCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4b9d4343-d744-424d-b583-9cf579f79c03',
    '72a9a763-56a7-416f-b14d-e4841ac9b5dd',
    'YAULI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'f4acb8c2-4152-47e0-aba3-9f787c808aff',
    'OXAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ecb16648-84ff-40e3-854a-2419276de0be',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'CHONTABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3a0009d6-c8b3-43b1-949e-9e537da2fb78',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'CONSTITUCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8f487742-1ca0-4811-96ea-ddb689c8702f',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'HUANCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd11aa3c3-7ff5-42ca-93d0-b1cc3c92e471',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'OXAPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '00c27a8e-2bfa-4311-b283-eed244de2795',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'PALCAZU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f67f1b57-6825-4b53-a5ca-c6e04836de6e',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'POZUZO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '660c4516-41b1-48ea-9865-18fa36b1fc76',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'PUERTO BERMUDEZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cba0e69d-ee67-4d78-a91b-1968a8592fbc',
    '16661337-91fb-44bf-946b-1edeb3de1119',
    'VILLA RICA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'AMAZONAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '4ba3e0eb-fe62-460c-8bab-ea02f9d6d91f',
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'BAGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4536bb4d-fb4d-420f-aaf5-aeeebb3d5eff',
    '4ba3e0eb-fe62-460c-8bab-ea02f9d6d91f',
    'ARAMANGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7f0319ac-cbdc-4817-bb50-e559327820d5',
    '4ba3e0eb-fe62-460c-8bab-ea02f9d6d91f',
    'BAGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ca33db68-242f-4234-8c99-e3464f441fd8',
    '4ba3e0eb-fe62-460c-8bab-ea02f9d6d91f',
    'COPALLIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a3695532-9df3-4645-b4c4-0308e6a7acc8',
    '4ba3e0eb-fe62-460c-8bab-ea02f9d6d91f',
    'EL PARCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '18da58f3-28c5-4406-90e3-020093c3e215',
    '4ba3e0eb-fe62-460c-8bab-ea02f9d6d91f',
    'IMAZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '265efe7c-bda8-4371-ac41-884ad4e24619',
    '4ba3e0eb-fe62-460c-8bab-ea02f9d6d91f',
    'LA PECA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'BONGARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '864b7c98-4c59-402b-92dd-a6bce127909c',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'CHISQUILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9671082c-6033-40f4-a67f-bdebbe2be492',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'CHURUJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '454a99ff-79ee-441a-8cc0-95e99d4348db',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'COROSHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'df6410f8-6cdf-41eb-af29-001fc3b11b09',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'CUISPES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '832d264d-46a3-492f-8cee-29e14e9d3df4',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'FLORIDA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '61a4d70b-0907-4713-874e-e05573685ca4',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'JAZAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0676283d-a26c-4f98-baac-e371e19c758b',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'JUMBILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6e4aa4fe-32fc-4c27-9579-da96258b8815',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'RECTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '42592e7d-bc6b-4f4e-a6dc-b7fcdcc2efd2',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'SAN CARLOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '360504a0-2d20-4471-8461-5fbceeb8cc03',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'SHIPASBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '297ea096-3a35-4911-84f4-d49e2cff9642',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'VALERA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb51535c-6e82-4cc4-a723-6320f0b562da',
    '652c0619-00e8-4c10-84ab-9d2b05c9e0f6',
    'YAMBRASBAMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'CHACHAPOYAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f24e9a33-6438-4a07-aa2d-0a37a4e39777',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'ASUNCION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a5e7ce45-cc52-47b1-a50b-c1f31c53e713',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'BALSAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5de1fdd1-4fc3-4b8d-bac3-7a76970d86c4',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'CHACHAPOYAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a540cd1a-47a6-4861-ac5c-b3488212cf54',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'CHETO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4cad6cdb-f74c-4388-84c9-02cab4b234f6',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'CHILIQUIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '98dbb112-eb34-4bd1-b6b8-b1a04675b8bb',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'CHUQUIBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0f4b8c68-0321-4604-9ceb-630232e298fc',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'GRANADA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6b67eb28-658b-425d-b894-a8ae695e1ea6',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'HUANCAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a1ea225f-a459-4287-9b37-8de8775d8ebd',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'LA JALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7332f9a2-6243-4e12-bc63-9faaf4e8c091',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'LEIMEBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6c4f2af4-b2d8-456b-8fc3-8a28a810c218',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'LEVANTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '942b5888-b00e-42ee-8948-3ffa6cd0cda0',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'MAGDALENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6842ecc-e335-45ac-9b02-72f41bbdf2b2',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'MARISCAL CASTILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a6ebd9d7-723a-4a38-ba74-8d46526da474',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'MOLINOPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6de045d2-ea8e-4082-999f-d0173610c2ad',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'MONTEVIDEO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b5063b06-743b-43e2-a3fa-0ad5f3850449',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'OLLEROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '59dfc463-3855-4e4a-961e-e01993a19f9e',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'QUINJALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '570f6ae2-7308-42f0-81bc-2dfefd261c5d',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'SAN FRANCISCO DE DAGUAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1b8350d1-c74f-46a3-8a25-5fb389613834',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'SAN ISIDRO DE MAINO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2d97965-4a35-43b3-9017-f9ff9d2899b6',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'SOLOCO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bed271d0-8133-476f-8378-8f34e91bb8ff',
    '9bf91226-6623-43cf-b9b1-e3eac0cf9747',
    'SONCHE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f36e320a-3050-458f-b1ad-0d51ef416749',
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'CONDORCANQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c25a7429-ac30-4f49-bf58-da4f58e4aaa5',
    'f36e320a-3050-458f-b1ad-0d51ef416749',
    'EL CENEPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8bbca80e-1d60-4a15-9c87-cd8756ba24fe',
    'f36e320a-3050-458f-b1ad-0d51ef416749',
    'NIEVA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e72b939a-efb0-40bd-8c61-e7e33c579727',
    'f36e320a-3050-458f-b1ad-0d51ef416749',
    'RIO SANTIAGO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'LUYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '841f7b97-1290-4107-89f9-cbb4ea00bd15',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'CAMPORREDONDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'daaaa0c3-14a6-4d77-a54f-72ac097ef5ef',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'COCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7e17db3d-faa0-44fb-8526-31f06b6c8cfa',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'COLCAMAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '36aded8f-de28-4d9a-a7b9-eadb8a3f4ab6',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'CONILA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '059366a0-7d49-4e40-b9c3-169de956a8cf',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'INGUILPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '966972b4-a192-43d6-b5e9-be450f13633c',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'LAMUD'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e208231c-f84a-4f4e-9713-6dab334e87a5',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'LONGUITA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bab6a09c-bcb2-4512-b8ea-40b8005a16bf',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'LONYA CHICO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0b92bb79-d230-4eac-a528-082074c6d7a3',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'LUYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '65a38903-94a1-4dd8-8159-14a6d47f9703',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'LUYA VIEJO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b1be69d0-58d0-4287-b185-c300e7f7bc55',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'MARIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '627dab98-b367-4279-a4ab-8e1b22daadae',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'OCALLI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9718a968-5626-4f27-8506-87833e6df01e',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'OCUMAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '760e134f-1f18-4595-9d1e-d4ee44ae64d0',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'PISUQUIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4967ea81-6bdc-4c02-84d5-b810fcbed8a2',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'PROVIDENCIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e5c4229b-98f9-4c22-b6e5-06484186c20b',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'SAN CRISTOBAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '787db55e-4cf3-44ea-b048-fce6bbd3f43a',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'SAN FRANCISCO DEL YESO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3b94b5d3-fd85-4bda-8db7-24abe3b1c75c',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'SAN JERONIMO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '80ce29fc-96f0-438e-95b1-242c58a0611c',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'SAN JUAN DE LOPECANCHA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '885062ed-8ae8-4a8d-b430-f39375486389',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'SANTA CATALINA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fac9c616-069f-44de-97b6-903634325581',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'SANTO TOMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ac3713a7-ceda-4138-9011-54fdb5ecf77a',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'TINGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e8a2b0d9-16b5-422d-a7c0-aa444f103912',
    'f252d795-e442-4aa6-bfd7-24d03a21c818',
    'TRITA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'RODRIGUEZ DE MENDOZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '60589807-cfb6-4b65-aa07-c1aa1212475b',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'CHIRIMOTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4e780e5e-511d-46c2-b65b-b69ab5544458',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'COCHAMAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '883b78f6-1620-4912-bb0e-fbfed57531d2',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'HUAMBO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '02cdcaa6-73bd-4c4d-9c14-d04a27eb7b27',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'LIMABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fc4ce54c-5c04-4502-98bb-207c80463c56',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'LONGAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12fb31b2-cf2c-4266-9aea-276abb41ec11',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'MARISCAL BENAVIDES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '62b1c981-1fae-4b2c-b1d7-48a9bca5e0bf',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'MILPUC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '748c9114-cc83-41e5-ab07-923a6151ec3c',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'OMIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9aa57f27-4f61-40f5-83b1-337401ae058e',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'SAN NICOLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5faaea56-415c-4883-9259-baccb43a95b1',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3beba222-979f-449b-a2ef-56126a6d490e',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'TOTORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f23973da-3735-417e-a72a-0c09aba97358',
    '9814b9d5-9a43-471b-9059-18d236cf70bd',
    'VISTA ALEGRE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'c32299b7-0fed-41bc-a3c4-024f92a560ca',
    'UTCUBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '54001ddf-0854-4558-afa6-59b6d026a732',
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'BAGUA GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f805308d-c659-4a0c-b272-c7cb54c58f56',
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'CAJARURO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1561ee82-7518-4835-a913-80b802f1d5a0',
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'CUMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f500e8df-836a-4271-8c1d-4e3ab0f23d7b',
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'EL MILAGRO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '511a6408-e43b-4f18-9901-101340e045f0',
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'JAMALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd4ae91f5-6bb5-41c0-9ae3-6645d6e115d2',
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'LONYA GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf71abe5-a4a3-4f2b-a115-8efbcc44c2dc',
    '54646296-c353-4eac-bfa4-ac54e472eb7e',
    'YAMON'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '136cd38c-a90a-4d4e-ab84-b260486c409c',
    'LAMBAYEQUE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    '136cd38c-a90a-4d4e-ab84-b260486c409c',
    'CHICLAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eb23fd6d-2d8e-4f4b-9925-4256ab139a78',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'CAYALTI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '89d3fa31-f899-48b5-a57f-e741150111b9',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'CHICLAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e5d41436-6a60-4e79-b789-01f56c435bbd',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'CHONGOYAPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ed530b75-e4d6-4346-ac97-fde05a13c96e',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'ETEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '979bad86-a530-4b15-8976-17bd079c6b44',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'ETEN PUERTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd45e118d-6540-43d5-9bbb-e1308624e0c8',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'JOSE LEONARDO ORTIZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7931a9d3-519b-4e29-9c63-2a7f4ffff8d9',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'LA VICTORIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c99b5904-7a8f-42bb-9f83-f5eba71922f0',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'LAGUNAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '342d7036-62b6-48dc-95c8-2faeba73edc7',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'MONSEFU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7b4899b2-836f-4019-aec2-8bbb395c3c30',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'NUEVA ARICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '71edf2b3-1f12-4106-92d6-75c04e094d86',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'OYOTUN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '75da0df5-a538-42fd-81c5-aa52189212b8',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'PATAPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dbccd150-7863-4c2f-8d6d-21c539ddb5a9',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'PICSI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35683209-1847-4762-8331-63064110d138',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'PIMENTEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '697dd26d-36ba-4686-8375-82a23dfb8e55',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'POMALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f1fbf741-0119-4525-aabc-b4b9f6037b60',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'PUCALA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '889847ba-0b30-41e4-9d92-f9c7e1689f72',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'REQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '00aafd34-52ed-4cb6-b424-7cf1bf3be1c8',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c3e37e06-f2d9-4d9b-92ff-e94b95358df2',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'SAÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f6a5a18d-88f3-4a31-9c9d-c7376c1cab23',
    'e5f327cf-a187-4fc8-b57e-7d2db4a62085',
    'TUMAN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '16d32f75-4d56-410a-8d05-f94b11c5985e',
    '136cd38c-a90a-4d4e-ab84-b260486c409c',
    'FERREÑAFE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cb951652-34ba-4c2d-9928-8bc25ecf5c7d',
    '16d32f75-4d56-410a-8d05-f94b11c5985e',
    'CAÑARIS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '22a022ed-0772-4b67-ae72-dd180e81e446',
    '16d32f75-4d56-410a-8d05-f94b11c5985e',
    'FERREÑAFE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec22fcc8-2033-4a26-9e21-c98a7b2750f6',
    '16d32f75-4d56-410a-8d05-f94b11c5985e',
    'INCAHUASI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'db87dfb0-68de-469d-ab5c-c327e3ef06d5',
    '16d32f75-4d56-410a-8d05-f94b11c5985e',
    'MANUEL ANTONIO MESONES MURO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a8947d0b-ba03-4eef-97eb-cd0902f0477a',
    '16d32f75-4d56-410a-8d05-f94b11c5985e',
    'PITIPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0004d3e1-d710-4790-afb7-8827a944c649',
    '16d32f75-4d56-410a-8d05-f94b11c5985e',
    'PUEBLO NUEVO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    '136cd38c-a90a-4d4e-ab84-b260486c409c',
    'LAMBAYEQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dccf7eb6-a218-4a22-8610-84a305d6e76e',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'CHOCHOPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8c48bec3-fc6b-444f-9810-633630169ece',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'ILLIMO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'df9d1203-f82f-48a7-b12e-a3ab07850c92',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'JAYANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '25063046-95bd-46cc-8261-5f5a792a2f72',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'LAMBAYEQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2a3483b7-6f8e-4862-9eca-35b51361f561',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'MOCHUMI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '93222373-1cab-4eed-a29d-ffb5963503f0',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'MORROPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e1bfd6a7-d229-4e62-8fcd-68975f864c47',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'MOTUPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8718c1d6-9cd4-4ccb-a654-1b7e21cb244e',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'OLMOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fb9eda6e-6711-4be9-8a97-f8f3bff0960d',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'PACORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6d980c92-7594-42bf-9f4f-3af7162313dd',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'SALAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ffbff056-ab81-4654-864b-0d2c71a8bdf9',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'SAN JOSE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fc5ee71c-2b66-407c-a35e-b0ca407f257e',
    '066f278c-5cdb-4d5c-9fda-d814e83b706a',
    'TUCUME'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'LORETO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'cb2481bd-a16b-4524-9232-650c55866e2f',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'ALTO AMAZONAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fb2a6055-98d9-4e75-afba-72b737ae5a9a',
    'cb2481bd-a16b-4524-9232-650c55866e2f',
    'JEBEROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd6d7c2e0-5950-4320-8f8c-dfeea12c5561',
    'cb2481bd-a16b-4524-9232-650c55866e2f',
    'LAGUNAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c34c4d9a-b985-48fb-a077-3e94c29429ab',
    'cb2481bd-a16b-4524-9232-650c55866e2f',
    'SANTA CRUZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5d8ee913-bb59-440b-b79b-a5dc02bd522e',
    'cb2481bd-a16b-4524-9232-650c55866e2f',
    'TENIENTE CESAR LOPEZ ROJAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd3fd920d-1aa4-40a8-99c4-f1316ae78a98',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'DATEM DEL MARAÑON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd41d5a5-ebea-4da1-bd7f-f17296c7965e',
    'd3fd920d-1aa4-40a8-99c4-f1316ae78a98',
    'ANDOAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eac831a8-9e5c-4513-93f9-e6fa4e1b76aa',
    'd3fd920d-1aa4-40a8-99c4-f1316ae78a98',
    'BARRANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb95c922-9b2c-4c15-b3cc-e42c99bf0d12',
    'd3fd920d-1aa4-40a8-99c4-f1316ae78a98',
    'CAHUAPANAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'be1e7bdd-999d-438e-b2d0-2a1204d85355',
    'd3fd920d-1aa4-40a8-99c4-f1316ae78a98',
    'MANSERICHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f3fbdd0e-b713-4a6e-a422-04f8e039eed3',
    'd3fd920d-1aa4-40a8-99c4-f1316ae78a98',
    'MORONA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f5e77d9b-b875-4595-9f6e-89c5a911e083',
    'd3fd920d-1aa4-40a8-99c4-f1316ae78a98',
    'PASTAZA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'fe6c4454-e3c4-423a-89b4-4b0d66fe945f',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'LORETO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4dc89936-8ee2-45b1-a5d1-1a86f8401d3f',
    'fe6c4454-e3c4-423a-89b4-4b0d66fe945f',
    'NAUTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7996a71f-cc17-4b47-aa34-b4236c812edd',
    'fe6c4454-e3c4-423a-89b4-4b0d66fe945f',
    'PARINARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dadca756-7ab9-4871-a7c9-d46db18c8641',
    'fe6c4454-e3c4-423a-89b4-4b0d66fe945f',
    'TIGRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '47a321ee-cbf5-4cc4-8bb4-a8a1c2bd97f3',
    'fe6c4454-e3c4-423a-89b4-4b0d66fe945f',
    'TROMPETEROS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0898cd0-4b00-4e73-85ca-be519982992b',
    'fe6c4454-e3c4-423a-89b4-4b0d66fe945f',
    'URARINAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3c5cc652-1ee7-4134-82a5-462db01abdb4',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'MARISCAL RAMON CASTILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6cc9bb2f-0a85-4347-9a41-db010fa31454',
    '3c5cc652-1ee7-4134-82a5-462db01abdb4',
    'PEBAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2c3d8cd5-42a0-42a4-ae38-5f5fe1e5f6cd',
    '3c5cc652-1ee7-4134-82a5-462db01abdb4',
    'RAMON CASTILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a682cfce-897d-4086-b2a4-1d655f204105',
    '3c5cc652-1ee7-4134-82a5-462db01abdb4',
    'SAN PABLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '044f7756-e6d5-4957-a638-ee4b163f6684',
    '3c5cc652-1ee7-4134-82a5-462db01abdb4',
    'YAVARI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'MAYNAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '05c3aec2-5ca4-46ef-8157-8e4abbb44f5f',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'ALTO NANAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '630a5756-b1e4-4bcf-8a7f-47f6e8d90642',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'BELEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a74be64f-2d34-4c65-8678-0099a2e922dc',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'FERNANDO LORES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '01c84a3f-b051-4b63-8087-0df4437e648b',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'INDIANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f5b1536e-dbc5-4c0d-ad75-c69e86109ec6',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'IQUITOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9fc4e47c-5dbc-44cb-b406-00f8e0ea93fe',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'LAS AMAZONAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f35ade21-0889-4f60-8e45-01c40cdb2716',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'MAZAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '17029331-b304-47af-b548-8f7a452aff2c',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'NAPO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a792f5ee-d3c9-422c-a142-61620fc992bc',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'PUNCHANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0506ddce-b2d0-4ba2-aca6-f923886a197a',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'PUTUMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8ff6fa2d-3190-4d9c-9489-e4ec4abae85e',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'SAN JUAN BAUTISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5340d9be-6735-41d0-b755-8bf58186eb8f',
    '73a9df4b-8a8e-489b-b4bf-09583b849924',
    'TORRES CAUSANA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '62945c8c-16bc-4697-8b42-1b66a62744b1',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'PUTUMAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '30b2236b-807c-4b5c-b17b-cd11e87e0efa',
    '62945c8c-16bc-4697-8b42-1b66a62744b1',
    'ROSA PANDURO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd1d9b116-1ebe-42e8-8cb3-f95afc637e4b',
    '62945c8c-16bc-4697-8b42-1b66a62744b1',
    'TENIENTE MANUEL CLAVERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b02b1f55-85ce-47c8-bdeb-e4c68000990b',
    '62945c8c-16bc-4697-8b42-1b66a62744b1',
    'YAGUAS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'REQUENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5ef388bd-0b38-441f-89a0-76a9159ff663',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'ALTO TAPICHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb14fa58-f89a-4bce-9bed-15a0da7328e1',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'CAPELO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd9b5c8b1-f101-4672-8b6f-b81ff107b920',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'EMILIO SAN MARTIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1dc9637f-c7c4-471f-beef-b6ef586d99a3',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'JENARO HERRERA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6f7edb7a-7b8d-4a52-b351-06265bcbaec0',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'MAQUIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7626bae0-b199-43b0-acd0-b6766d1dc38c',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'PUINAHUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '175e101f-1f9f-4307-ac73-13930ad977ea',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'REQUENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8ce6f3ed-af40-4b3e-8b6f-bde8f4257a41',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'SAQUENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b5b9539f-c4b8-4925-900e-6e928eaf3aa7',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'SOPLIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4773eddb-6a22-4524-97cc-0c73db3188c7',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'TAPICHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '850e3a15-33af-407b-bebb-8d62d540a447',
    '3eff3b74-3a88-42f1-9669-a633d2400ad4',
    'YAQUERANA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '174c1bbe-bc5f-48a6-9dbb-c29a0431e699',
    'MADRE DE
DIOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5da0dfa6-5ff2-4b72-891a-025012770d26',
    '174c1bbe-bc5f-48a6-9dbb-c29a0431e699',
    'MANU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2647f10c-7af3-46dc-88c5-59d2326cfa57',
    '5da0dfa6-5ff2-4b72-891a-025012770d26',
    'FITZCARRALD'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1666c110-120c-48ee-8542-e1dd9fbd9368',
    '5da0dfa6-5ff2-4b72-891a-025012770d26',
    'HUEPETUHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f531ea67-05f9-4dd6-9ef3-72882da03218',
    '5da0dfa6-5ff2-4b72-891a-025012770d26',
    'MADRE DE DIOS'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'cbed07d7-c27c-467a-842b-18f1ff0bc87e',
    'MADRE DE DIOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b66f22d6-57be-493d-99a4-c7a8431a009c',
    'cbed07d7-c27c-467a-842b-18f1ff0bc87e',
    'MANU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9a03389a-e6f1-4581-a420-1e12142c2579',
    'b66f22d6-57be-493d-99a4-c7a8431a009c',
    'MANU'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '8430351a-0e15-4b0a-809c-e4e89bbb132c',
    'cbed07d7-c27c-467a-842b-18f1ff0bc87e',
    'TAHUAMANU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '07fa0708-6ecc-423b-8cf2-bfc0959d59f2',
    '8430351a-0e15-4b0a-809c-e4e89bbb132c',
    'IBERIA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f14f7bfd-5bcb-4c8a-9e88-697a58da0f6c',
    '174c1bbe-bc5f-48a6-9dbb-c29a0431e699',
    'TAHUAMANU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8c286aa3-5d8d-43a6-a868-46c084f03a6d',
    'f14f7bfd-5bcb-4c8a-9e88-697a58da0f6c',
    'IÑAPARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '78d20f9d-87bd-49d1-b45b-4c30cddf78b4',
    'f14f7bfd-5bcb-4c8a-9e88-697a58da0f6c',
    'TAHUAMANU'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'acd78ea7-fe7d-400f-bc75-8e5ed5257024',
    '174c1bbe-bc5f-48a6-9dbb-c29a0431e699',
    'TAMBOPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5868a77b-d6ef-4bc3-815d-127742605fa0',
    'acd78ea7-fe7d-400f-bc75-8e5ed5257024',
    'INAMBARI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '992899e6-6cb5-4711-bad7-4d51f221f62a',
    'acd78ea7-fe7d-400f-bc75-8e5ed5257024',
    'LABERINTO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9b10e3a5-d707-4be1-8595-c18fed3e4903',
    'cbed07d7-c27c-467a-842b-18f1ff0bc87e',
    'TAMBOPATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'aa1f2883-66f7-4a14-afcc-a08558eaabd6',
    '9b10e3a5-d707-4be1-8595-c18fed3e4903',
    'LAS PIEDRAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1cdb1db1-5576-48ba-9a6e-7b76455e91f2',
    '9b10e3a5-d707-4be1-8595-c18fed3e4903',
    'TAMBOPATA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'PIURA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '31e26e82-3386-48a8-9963-c39431258efb',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'AYABACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eda6619a-ff7f-47ac-92df-2156bd94cb74',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'AYABACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f862d72a-c8b0-49d3-bc48-cf900e5fe88b',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'FRIAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd904909-4e51-47b1-a9cd-bd001a084ab0',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'JILILI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a86d29e2-a37a-4866-8118-bb946be8469c',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'LAGUNAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fbeb1fcb-84fb-41f1-9979-c7313b33c7be',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'MONTERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e2230bf2-4d10-4033-8866-2f853c215c1f',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'PACAIPAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '233b331e-9730-4220-bff5-4a8cdee2ada2',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'PAIMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f6e6fd51-6c77-44b3-8fc5-df84233d444b',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'SAPILLICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ff291481-2fde-4726-b4c5-72540dadb1a4',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'SICCHEZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '22b90013-ecad-4560-b64a-ac303c86b700',
    '31e26e82-3386-48a8-9963-c39431258efb',
    'SUYO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'HUANCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2e6b70c6-2419-426d-b495-a78a8ed217f5',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'CANCHAQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '834400a9-53c4-4244-aaa8-e777825c9bba',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'EL CARMEN DE LA FRONTERA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7d6089cb-5475-43d3-b513-7abbe8fc7734',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'HUANCABAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fdef511f-fb02-4982-88f1-45a84d3672f4',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'HUARMACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '128e6aa9-438a-47d5-816f-b96c9a666bbc',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'LALAQUIZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '565d2f01-852c-402f-854b-ef1841db3fb5',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'SAN MIGUEL DE EL FAIQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c7bac80a-9e6c-4451-a3fb-2d7a3133f811',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'SONDOR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2749965-f301-4104-8de7-959737a3d274',
    'b7d828e1-c6cf-48e2-bfc0-f8655e769a94',
    'SONDORILLO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'MORROPON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ba80aea8-0121-489f-a019-edc2c6188d32',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'BUENOS AIRES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '73e95b51-487c-48c6-9461-d799a589b82b',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'CHALACO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '037af26a-ae52-4615-babc-e7d30a98e171',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'CHULUCANAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd14f9aba-a003-4754-9429-49b291c8b921',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'LA MATANZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '25b89b8e-1792-4984-86ea-6c4e49f8ab7c',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'MORROPON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3ed2f6f9-a79d-4373-9539-476cea867e35',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'SALITRAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e0de7e0b-11c0-4e83-978d-d29ba36512aa',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'SAN JUAN DE BIGOTE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4e87290c-34cc-44a4-84ba-c6132f41260d',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'SANTA CATALINA DE MOSSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2e6126da-ed78-40bb-bfc4-ce55b1624d17',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'SANTO DOMINGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec29a39d-0de5-4a2a-bf76-efafb85db625',
    'c509b01f-6503-4dd9-9ae0-a8e406fd3de0',
    'YAMANGO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'PAITA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7b023930-47d5-4683-adab-5baf6da04a68',
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'AMOTAPE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9d4f16b2-4b4c-471f-bf74-58551e4d8d24',
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'ARENAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0b167293-7f15-47fa-9f84-d65b040c4c8f',
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'COLAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3a52dce0-483b-42db-8906-96ac8ae95625',
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'LA HUACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '95e77e03-0d00-410c-9d67-ded09f6ed3f7',
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'PAITA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4e6debe2-8da3-4f6f-a833-980fcc586343',
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'TAMARINDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '940b0836-b823-4751-9a4a-28b1014ea7fa',
    'f03b5f90-b5f3-437d-8113-53c1c71b03fb',
    'VICHAYAL'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'PIURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd69990d1-5349-495d-b162-7a492ee398da',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'CASTILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0cb65b4-6e1f-47db-8a6d-72f21264bcd8',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'CATACAOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '33e1bdc1-2d68-442c-affa-bb22aa4e0e52',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'CURA MORI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ca0c447f-6198-4bfe-bb83-7e38bf254db3',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'EL TALLAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '292d3ec9-03ce-4f41-bfcc-8f0f4b332b44',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'LA ARENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '67b368c9-9f8b-400f-84a6-1a852cbff293',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'LA UNION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cfb7e101-35da-4ac5-8a86-f445f492231d',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'LAS LOMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cd4fa2d4-c245-4390-b030-c2ed464ee694',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'PIURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dc6a408c-fd94-43c4-9245-eeabc71e4f1d',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'TAMBO GRANDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9eda9991-063a-4e15-976f-82f527928451',
    '5413f90b-c2d6-45f7-a21d-f6e2fc46e6b4',
    'VEINTISEIS DE OCTUBRE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'e9947263-77dc-42a2-bd85-22655c18bd30',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'SECHURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9d58befb-83a7-4053-b4b0-f1986498b7c5',
    'e9947263-77dc-42a2-bd85-22655c18bd30',
    'BELLAVISTA DE LA UNION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e51c8ce-2173-410e-aed1-184383c0a1df',
    'e9947263-77dc-42a2-bd85-22655c18bd30',
    'BERNAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '73eb52b7-06b1-46eb-9e54-13067cca6ecb',
    'e9947263-77dc-42a2-bd85-22655c18bd30',
    'CRISTO NOS VALGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3ab9c5a9-e343-4e92-84ab-b4a3a186159e',
    'e9947263-77dc-42a2-bd85-22655c18bd30',
    'RINCONADA LLICUAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '08ca5e91-6714-4b01-a48e-ba1367d94fbf',
    'e9947263-77dc-42a2-bd85-22655c18bd30',
    'SECHURA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7e371b28-2f78-43fa-9c41-c75a1df859ba',
    'e9947263-77dc-42a2-bd85-22655c18bd30',
    'VICE'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'SULLANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd3c34158-49de-4d88-a84e-c0d8fbea37d2',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'BELLAVISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '91637937-a88f-4793-a1f7-3b0969df31bf',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'IGNACIO ESCUDERO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '456742d7-80d5-4831-8433-90358d3a51b0',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'LANCONES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6bd398ab-3409-49b9-8a48-126de19dff07',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'MARCAVELICA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e82fac76-4c76-4ea9-991a-368ed878b149',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'MIGUEL CHECA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf48d790-d5f7-4951-a979-761f64deaf95',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'QUERECOTILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7a859e51-8f51-435a-893c-de3d19a13ac6',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'SALITRAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2b6f54b6-6c3e-4462-810d-56ed2bf108fc',
    '9005161e-ae02-477c-b03c-07f3ca2c7a8e',
    'SULLANA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'fbf8a031-8497-4881-b4e6-50689b1ae230',
    'bd12a975-95db-4be0-b6bb-c8156348010b',
    'TALARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fc69a9ee-b749-49bc-9a88-17bb1f40a6af',
    'fbf8a031-8497-4881-b4e6-50689b1ae230',
    'EL ALTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e386a6ce-af99-4682-8b44-b19f9ea0ee9d',
    'fbf8a031-8497-4881-b4e6-50689b1ae230',
    'LA BREA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5ab6665f-b82a-4529-89b2-0ad5fbdfea8e',
    'fbf8a031-8497-4881-b4e6-50689b1ae230',
    'LOBITOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2215db31-c512-488f-ba46-40e9619912ad',
    'fbf8a031-8497-4881-b4e6-50689b1ae230',
    'LOS ORGANOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cc8278c4-fd93-43dd-a34c-45a4a0d522d5',
    'fbf8a031-8497-4881-b4e6-50689b1ae230',
    'MANCORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1fba2fb9-80a2-4261-b20f-7cb6e0483843',
    'fbf8a031-8497-4881-b4e6-50689b1ae230',
    'PARIÑAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a8efce48-1180-4611-a652-0a774023a50d',
    'cb2481bd-a16b-4524-9232-650c55866e2f',
    'BALSAPUERTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '877e2052-93bd-4e66-aa8c-1b45f382741b',
    'cb2481bd-a16b-4524-9232-650c55866e2f',
    'YURIMAGUAS'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'SAN MARTIN'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '78d8409c-c61d-4197-9865-711e4b502039',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'BELLAVISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '088b270b-1f8d-4ba3-8caf-37d13c2d37a4',
    '78d8409c-c61d-4197-9865-711e4b502039',
    'ALTO BIAVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bab788f7-bf02-4e13-a0b6-50623d7293ca',
    '78d8409c-c61d-4197-9865-711e4b502039',
    'BAJO BIAVO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '399986e8-3565-4099-87f3-7fe34fed5d44',
    '78d8409c-c61d-4197-9865-711e4b502039',
    'BELLAVISTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0c53efcb-b809-4093-ba01-b4428bbd5b10',
    '78d8409c-c61d-4197-9865-711e4b502039',
    'HUALLAGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8244afdb-d057-46c3-9694-4d2461297420',
    '78d8409c-c61d-4197-9865-711e4b502039',
    'SAN PABLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd59e17dc-1732-4de5-b732-21f027621876',
    '78d8409c-c61d-4197-9865-711e4b502039',
    'SAN RAFAEL'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '1fcb12cd-4685-409f-b547-1bd90c615c05',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'EL DORADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a1a2d4f5-c286-40ff-b2bb-12f451303664',
    '1fcb12cd-4685-409f-b547-1bd90c615c05',
    'AGUA BLANCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8323a40f-299c-483b-9002-8bb979322792',
    '1fcb12cd-4685-409f-b547-1bd90c615c05',
    'SAN JOSE DE SISA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '42421bec-e8a7-4f76-9aef-54e5c2154914',
    '1fcb12cd-4685-409f-b547-1bd90c615c05',
    'SAN MARTIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b0e9f7fe-8e57-4034-a275-ec7383e68358',
    '1fcb12cd-4685-409f-b547-1bd90c615c05',
    'SANTA ROSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a2705914-ae61-4c57-ad24-e2da864bf463',
    '1fcb12cd-4685-409f-b547-1bd90c615c05',
    'SHATOJA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '9078d617-b7d8-4547-9378-55adafd12b97',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'HUALLAGA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd78aadb8-d0b0-491d-b268-dc09c74e16da',
    '9078d617-b7d8-4547-9378-55adafd12b97',
    'ALTO SAPOSOA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '276b2b49-039e-4c43-adc0-9daa1695d3d6',
    '9078d617-b7d8-4547-9378-55adafd12b97',
    'EL ESLABON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e080b4c-b6ae-4a51-96fa-8891ba2f5d90',
    '9078d617-b7d8-4547-9378-55adafd12b97',
    'PISCOYACU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '71ddc8ff-9fd8-4d9a-8237-57cdc5ef448b',
    '9078d617-b7d8-4547-9378-55adafd12b97',
    'SACANCHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '96896f1f-4963-474d-8022-d88314526e49',
    '9078d617-b7d8-4547-9378-55adafd12b97',
    'SAPOSOA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b940fb8-9a3a-4bda-8723-df54579b4cd2',
    '9078d617-b7d8-4547-9378-55adafd12b97',
    'TINGO DE SAPOSOA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'LAMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f82e9b35-2030-4b65-ac01-137a64de1fe5',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'ALONSO DE ALVARADO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fbd0f0b8-af59-4abe-b20a-0a287b68b251',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'BARRANQUITA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eb00e569-5fb7-43f6-95bb-5096b3e792e0',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'CAYNARACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '66321f3a-ad57-42cd-902c-ae79f93e68fa',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'CUÑUMBUQUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b152f455-626c-4b04-b915-d828613cf005',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'LAMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c616f953-7838-4049-a6c8-6ecd947010cb',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'PINTO RECODO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b91af76f-a8fe-477e-8933-9249f6e5467d',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'RUMISAPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '345bfbe5-d164-4527-9a5d-e4907b83161a',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'SAN ROQUE DE CUMBAZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3e9f0648-0f25-489d-afe2-abe9dec08013',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'SHANAO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ed521af7-3a6b-456b-8c74-4ee254fd3e62',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'TABALOSOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8e225ec4-089e-4410-837b-c33925b32262',
    'd6c7f8a4-ca18-4a44-9cb3-64e6caf238ad',
    'ZAPATERO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'cf217ea8-4d7e-433d-ac6c-3b78be172ec9',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'MARISCAL CACERES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c3699d07-841b-4817-b967-1660b633e8e6',
    'cf217ea8-4d7e-433d-ac6c-3b78be172ec9',
    'CAMPANILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'df1a2cc4-1faf-410d-a6d4-edace1f8a16c',
    'cf217ea8-4d7e-433d-ac6c-3b78be172ec9',
    'HUICUNGO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9f43eeac-4eca-4584-8a9f-c9ec5767a11f',
    'cf217ea8-4d7e-433d-ac6c-3b78be172ec9',
    'JUANJUI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cefbb99b-33c2-4815-942e-7a83b7869a31',
    'cf217ea8-4d7e-433d-ac6c-3b78be172ec9',
    'PACHIZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7165d8c9-b263-445f-9a69-a606a8637b33',
    'cf217ea8-4d7e-433d-ac6c-3b78be172ec9',
    'PAJARILLO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'a51710d0-a30d-4204-9b89-9ecfc27b7d27',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'MOYOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '01e2546e-f0df-4324-93ec-20e18ec40832',
    'a51710d0-a30d-4204-9b89-9ecfc27b7d27',
    'CALZADA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'db20d112-af98-4228-9079-386636752db5',
    'a51710d0-a30d-4204-9b89-9ecfc27b7d27',
    'HABANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c12493c7-249b-4084-8176-2062cabf9b84',
    'a51710d0-a30d-4204-9b89-9ecfc27b7d27',
    'JEPELACIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8b581635-cf52-41d3-a5e9-5d09fa748ed6',
    'a51710d0-a30d-4204-9b89-9ecfc27b7d27',
    'MOYOBAMBA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7b75beb9-12c3-4be7-af1a-fb77b1ceee5e',
    'a51710d0-a30d-4204-9b89-9ecfc27b7d27',
    'SORITOR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e5af17f3-9095-418c-b4cd-96b07bdbb14c',
    'a51710d0-a30d-4204-9b89-9ecfc27b7d27',
    'YANTALO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'PICOTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35f8b4fc-7763-48ff-bbf7-400e438c6fb1',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'BUENOS AIRES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ec324f66-3cec-4eec-94c5-d1e73507007c',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'CASPISAPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1790b84a-be43-46f6-be59-a46e7f2070fe',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'PICOTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6a4b8adf-0378-4d0c-84de-c5a1b58a8403',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'PILLUANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '923ae2bf-9abb-4071-a133-156639c7e61c',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'PUCACACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf66c94f-2e2c-4948-9ddc-4ef970ae0c34',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'SAN CRISTOBAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '248c7d2e-6607-4768-8252-e71408085015',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'SAN HILARION'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4dc0ffa5-d4ec-41bc-af39-5df7b0de8edf',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'SHAMBOYACU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '50a4bbd2-25db-4a05-bfc6-8f7f8909190a',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'TINGO DE PONASA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '516e4f64-690d-4be1-9530-65d00ea1d6e0',
    '82eff44f-3560-4cdc-a0ba-32eacdcd6df8',
    'TRES UNIDOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'RIOJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '12f33803-708d-4e10-af8e-722119c98089',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'AWAJUN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '969877d4-4579-4e67-a11f-987fe274f7e7',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'ELIAS SOPLIN VARGAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '91afeb3d-ef37-4860-aa5c-adf7a042987b',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'NUEVA CAJAMARCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a59d8580-0c33-4941-9699-cbe20e8c19ea',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'PARDO MIGUEL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '7da6db4b-451c-46fe-b594-9aa92ea3e833',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'POSIC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd9cfcd0b-963f-4188-ba04-68b5ea258074',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'RIOJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ed65a666-e628-49fc-8b0b-85b78d2ec214',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'SAN FERNANDO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5b1fca42-0344-4329-9422-86b3e46f48fd',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'YORONGOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e4e96066-e01e-4b2a-8932-0a586e7cb45a',
    'f5944c1e-0785-4070-a7ad-accd4c273162',
    'YURACYACU'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'SAN MARTIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f42cf986-64af-43d9-bd79-7e21b294f1ed',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'ALBERTO LEVEAU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b9085f0d-ac4c-4c64-83c8-7d0ddf9a742a',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'CACATACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'cf3d2cc3-e4a2-4efc-8bc7-6b811701f77e',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'CHAZUTA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4aadfe3c-a8a2-4d32-854a-840414d83850',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'CHIPURANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fa555525-a55e-411d-acdb-dd799ea2094d',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'EL PORVENIR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0b889323-d905-42de-92f6-b853555f1d70',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'HUIMBAYOC'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8761c375-1a54-4054-afae-3ff9211f8106',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'JUAN GUERRA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ad411a23-08d9-440f-a608-aa833b7d4bef',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'LA BANDA DE SHILCAYO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3307b174-e6ca-4e94-b1a3-4773bffd1795',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'MORALES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2a91295b-368b-4168-93ac-39f488b54061',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'PAPAPLAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b3e0b4ea-3b62-490a-af55-c757d3c81202',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'SAN ANTONIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0ef330aa-419a-47af-bab3-4aba7730d768',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'SAUCE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd89dcb77-16c6-4604-afe2-bddf30b8f36e',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'SHAPAJA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd06db967-5055-40e3-959e-f3d5c71c66b8',
    'cdcb39ad-fca3-4629-a2a5-74b8ea67f7ee',
    'TARAPOTO'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '62426a05-cc7e-4c97-b676-1fb898d8f8d6',
    'a0a66ffb-5cdd-469e-8708-849c249af382',
    'TOCACHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f21015a8-67bd-437b-9a20-fab47be5afe3',
    '62426a05-cc7e-4c97-b676-1fb898d8f8d6',
    'NUEVO PROGRESO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '314c7ad2-8676-4e2c-af67-a91045069a07',
    '62426a05-cc7e-4c97-b676-1fb898d8f8d6',
    'POLVORA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9cfe9f73-abfe-4dd0-b7e7-5d8ea82ebfee',
    '62426a05-cc7e-4c97-b676-1fb898d8f8d6',
    'SANTA LUCIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '35e8ec8b-e25c-443b-a67e-1680f8164280',
    '62426a05-cc7e-4c97-b676-1fb898d8f8d6',
    'SHUNTE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c21ab6d1-027a-4f65-95a8-3ebe87a4f4ab',
    '62426a05-cc7e-4c97-b676-1fb898d8f8d6',
    'TOCACHE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c03e4cae-f636-45c8-b36a-4dd2a8e177b0',
    '62426a05-cc7e-4c97-b676-1fb898d8f8d6',
    'UCHIZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '39c3cc20-fa28-4144-a29e-e5e34f40a1b2',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'CHOJATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0fbfb379-2355-4313-b8fa-356f7e5e967c',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'ICHUÑA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b9454ab8-fa5c-4015-bfa1-1d36b13a3fe4',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'LLOQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '15a0d8d7-14a1-4e32-8daa-736a245096f9',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'QUINISTAQUILLAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ecab3a03-4a01-44d7-abee-a4f66eb8edd5',
    '340ad7d0-cc0b-439a-97ef-daa217791720',
    'YUNGA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '7451be73-c49f-419f-a6b1-a8047ccbc4d8',
    'ee9997fd-08cd-4b37-9403-b0d431ecbeaf',
    'ILO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '9e8c0a8b-605d-4eb2-9073-2e4d071faabd',
    '7451be73-c49f-419f-a6b1-a8047ccbc4d8',
    'EL ALGARROBAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b16e5b6c-0d73-4beb-a533-6283008b74ac',
    '7451be73-c49f-419f-a6b1-a8047ccbc4d8',
    'ILO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'faf156b6-be19-454b-9613-71cdd92dfd1d',
    '7451be73-c49f-419f-a6b1-a8047ccbc4d8',
    'PACOCHA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'ee9997fd-08cd-4b37-9403-b0d431ecbeaf',
    'MARISCAL NIETO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c3a76e62-908b-4e2a-aaf2-336ad6789c1e',
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'CARUMAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '468402f1-7355-4646-a5c3-705dfdfd47d0',
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'CUCHUMBAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '26d66221-de05-45b0-a565-8f2ac2b0527a',
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'MOQUEGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '902d0ed1-84dc-438b-a5e4-c5addcd5c376',
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'SAMEGUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '383cc371-c08c-4196-88cc-561c0a9d3e97',
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'SAN ANTONIO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1e4934dd-041c-48cc-9d26-b199506d79cd',
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'SAN CRISTOBAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3d452336-ea2b-4b83-82a7-0a35ba0fed7d',
    '203d01b4-1792-4dd3-ad66-78df84319a55',
    'TORATA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '3c743057-c746-4eb0-a69f-e81ca764b82b',
    'TACNA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'de988e2e-909d-4712-b933-effa1b0e00d5',
    '3c743057-c746-4eb0-a69f-e81ca764b82b',
    'CANDARAVE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'eceaa9e0-b07c-4679-8c47-e1f888166db3',
    'de988e2e-909d-4712-b933-effa1b0e00d5',
    'CAIRANI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e03e46fd-57db-4a95-a241-6ff38435fdfe',
    'de988e2e-909d-4712-b933-effa1b0e00d5',
    'CAMILACA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f83a291a-a186-4fc2-9559-a34ebd1897d9',
    'de988e2e-909d-4712-b933-effa1b0e00d5',
    'CANDARAVE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38896161-8e7e-470a-bc85-2a7c5db82cc7',
    'de988e2e-909d-4712-b933-effa1b0e00d5',
    'CURIBAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '40c029e3-95cd-425d-ad46-324784182a6d',
    'de988e2e-909d-4712-b933-effa1b0e00d5',
    'HUANUARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ce31707d-533c-45b1-9759-e09d7333d316',
    'de988e2e-909d-4712-b933-effa1b0e00d5',
    'QUILAHUANI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '74f3994a-8c9b-4d7c-b285-8559232da9e6',
    '3c743057-c746-4eb0-a69f-e81ca764b82b',
    'JORGE BASADRE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c8775474-9c1a-4e5a-b3d6-94fdc22ce5c4',
    '74f3994a-8c9b-4d7c-b285-8559232da9e6',
    'ILABAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c92529a8-93ac-4dbd-a4a3-f74e3c9d64fd',
    '74f3994a-8c9b-4d7c-b285-8559232da9e6',
    'ITE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f75cd2ef-27aa-4729-8493-af93717ed0af',
    '74f3994a-8c9b-4d7c-b285-8559232da9e6',
    'LOCUMBA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    '3c743057-c746-4eb0-a69f-e81ca764b82b',
    'TACNA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b69e6382-6b12-4f1b-ac7e-2de98ee502df',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'ALTO DE LA ALIANZA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'afbb9c31-8007-4339-8530-80a53b47a98e',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'CALANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '53b4b910-0f69-41b4-a73b-929db77f87e6',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'CIUDAD NUEVA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '048fb8e0-ebba-422b-8c9e-4a2887efa054',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'CORONEL GREGORIO ALBARRACIN LANCHIPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6b4b376d-b015-48e6-a5da-636cd7d6b2f5',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'INCLAN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f9055a2b-3669-43da-992d-0b5c8158c3fb',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'LA YARADA LOS PALOS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '0c63a5db-8f6d-4412-bef7-15f27f3c21bd',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'PACHIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '91559975-b9d1-49a2-bb70-3513702410b2',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'PALCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '001df685-9372-4838-926a-b8a18ce6bd96',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'POCOLLAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '77ffd20a-1785-41a2-a07f-d478755aef5e',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'SAMA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f8257b35-5a56-448e-988a-2e08cb46d5b9',
    '406b14a6-61ab-4c0f-a6fb-853f1a92e535',
    'TACNA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    '3c743057-c746-4eb0-a69f-e81ca764b82b',
    'TARATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '677acc03-733c-4772-b4b8-91cb5c9f0dbc',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'ESTIQUE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8a3ffb32-d008-4f9f-8e22-35c36c53fcd3',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'ESTIQUE-PAMPA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '61b135d2-360d-40cb-b41f-408cc3918cdb',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'HEROES ALBARRACIN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8714dcba-9dd1-4389-8af9-15e0f752709e',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'SITAJARA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f613a413-d01d-40dd-920b-a0f2ea3650dc',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'SUSAPAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a7cf787f-a090-439d-b0f6-9d38e78d777f',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'TARATA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fe457ebd-b1f0-4cc0-a08d-fb0307b17479',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'TARUCACHI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '4526e8d1-6b0f-490a-8281-67a26fb216e6',
    '5839207e-dc78-45af-aa60-06c58afbb79a',
    'TICACO'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '9f7b9b2d-6482-4850-977d-cdf0f40104ed',
    'TUMBES'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '580a11fa-a0aa-4f34-9322-2949075e0e70',
    '9f7b9b2d-6482-4850-977d-cdf0f40104ed',
    'CONTRALMIRANTE VILLAR'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8d82585a-701a-4988-bfc2-3c4a6d5b17b7',
    '580a11fa-a0aa-4f34-9322-2949075e0e70',
    'CANOAS DE PUNTA SAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '92dcc742-7b23-4bf7-a506-5f950fbdda00',
    '580a11fa-a0aa-4f34-9322-2949075e0e70',
    'CASITAS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'ab636686-6c72-420e-b360-f3fdc3a2d559',
    '580a11fa-a0aa-4f34-9322-2949075e0e70',
    'ZORRITOS'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd2b33eb5-5b62-4caa-9b4c-bdd743c2bfc9',
    '9f7b9b2d-6482-4850-977d-cdf0f40104ed',
    'TUMBES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '474c0cae-b5cb-41a8-abb6-0ea31b6e5a80',
    'd2b33eb5-5b62-4caa-9b4c-bdd743c2bfc9',
    'CORRALES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a0e11343-1901-4e42-8036-7b31b0ac4fd4',
    'd2b33eb5-5b62-4caa-9b4c-bdd743c2bfc9',
    'LA CRUZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e22b4c44-53cb-4e06-9a20-3b650e7c4de6',
    'd2b33eb5-5b62-4caa-9b4c-bdd743c2bfc9',
    'PAMPAS DE HOSPITAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b79ccd2c-132a-4452-b2f3-61aa70c25bbc',
    'd2b33eb5-5b62-4caa-9b4c-bdd743c2bfc9',
    'SAN JACINTO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '550dbc7e-2c89-4638-8b66-fd9145d30b57',
    'd2b33eb5-5b62-4caa-9b4c-bdd743c2bfc9',
    'SAN JUAN DE LA VIRGEN'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fbc4a05e-8228-47c7-9377-e9e1969e4faf',
    'd2b33eb5-5b62-4caa-9b4c-bdd743c2bfc9',
    'TUMBES'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '6f3786e3-a624-484a-a022-ec20a53b0cb4',
    '9f7b9b2d-6482-4850-977d-cdf0f40104ed',
    'ZARUMILLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5f2999b3-84fe-45d4-be64-3b1d28a6511e',
    '6f3786e3-a624-484a-a022-ec20a53b0cb4',
    'AGUAS VERDES'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c6e740fe-ed6b-415b-9fd8-6529dfccb9e4',
    '6f3786e3-a624-484a-a022-ec20a53b0cb4',
    'MATAPALO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '38ea6359-dcab-408e-906a-af970e5289a3',
    '6f3786e3-a624-484a-a022-ec20a53b0cb4',
    'PAPAYAL'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'bb7a5ba0-9d86-4518-92b4-3a38288db9ea',
    '6f3786e3-a624-484a-a022-ec20a53b0cb4',
    'ZARUMILLA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '3404158a-2e02-4522-8148-4a08ebeb440c',
    'f25eb07e-a802-4431-bf98-115d35f1ea95',
    'UCAYALI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dc77af1a-f366-41c8-ae09-9ae37c277fc8',
    '3404158a-2e02-4522-8148-4a08ebeb440c',
    'CONTAMANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8bddb6b1-26fd-4000-be02-beb609f850d9',
    '3404158a-2e02-4522-8148-4a08ebeb440c',
    'INAHUAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1cbd2f58-e230-438a-b345-7d8d49b16091',
    '3404158a-2e02-4522-8148-4a08ebeb440c',
    'PADRE MARQUEZ'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '33cc5865-3fe2-4bf0-8332-7b1d312848b8',
    '3404158a-2e02-4522-8148-4a08ebeb440c',
    'PAMPA HERMOSA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '6914e305-171a-45ef-8d96-bbb98f2f81a1',
    '3404158a-2e02-4522-8148-4a08ebeb440c',
    'SARAYACU'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'fa361d9e-8cdd-482d-accf-46b44f709b5a',
    '3404158a-2e02-4522-8148-4a08ebeb440c',
    'VARGAS GUERRA'
  );

INSERT INTO
  states (id, name)
VALUES
  (
    '39da6594-df70-4cba-8479-3496d07e50dd',
    'UCAYALI'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    'd5c7f412-a9a2-4958-a503-4697f967a758',
    '39da6594-df70-4cba-8479-3496d07e50dd',
    'ATALAYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '193bc2c9-4a58-4333-866c-b6756c774801',
    'd5c7f412-a9a2-4958-a503-4697f967a758',
    'RAIMONDI'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '26209110-7082-4961-a07c-504151e2c9af',
    'd5c7f412-a9a2-4958-a503-4697f967a758',
    'SEPAHUA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'af175561-462f-481d-9f28-f3f0834ce493',
    'd5c7f412-a9a2-4958-a503-4697f967a758',
    'TAHUANIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'c9551088-3135-4966-913e-013503a1a28a',
    'd5c7f412-a9a2-4958-a503-4697f967a758',
    'YURUA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    '39da6594-df70-4cba-8479-3496d07e50dd',
    'CORONEL PORTILLO'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '2847c70e-7d79-421b-b4fa-bda367062a6d',
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    'CALLERIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e00cb1bd-f29f-4a54-9b66-df79ee842dfe',
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    'CAMPOVERDE'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'a79624c5-06dd-4c87-94c2-66d81e9c24fa',
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    'IPARIA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1cbe243a-7ac9-45ec-a11d-315922c582d5',
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    'MANANTAY'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'dd040915-c4dc-4651-bf69-7d2ea21c84a6',
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    'MASISEA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'd7311877-0465-4340-8117-32c989cc3ed5',
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    'NUEVA REQUENA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '1463c38a-2f69-4997-acba-f441dd811b4a',
    '87d6233e-ae33-4b51-86f0-4e2837cbe7b7',
    'YARINACOCHA'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '55c584c4-1d46-450e-8340-8746384c4c99',
    '39da6594-df70-4cba-8479-3496d07e50dd',
    'PADRE ABAD'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'f7229ce0-4775-4a67-aedd-b0f62bf0c3f1',
    '55c584c4-1d46-450e-8340-8746384c4c99',
    'ALEXANDER VON HUMBOLDT'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '8eb70983-4653-4c9b-b2bb-85bfaa5ff062',
    '55c584c4-1d46-450e-8340-8746384c4c99',
    'BOQUERON'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'e1ed2fce-ad61-4e21-9ae0-cb62928cc028',
    '55c584c4-1d46-450e-8340-8746384c4c99',
    'CURIMANA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    'b92c2ca3-d3bf-492f-8e31-f56e52106bf7',
    '55c584c4-1d46-450e-8340-8746384c4c99',
    'HUIPOCA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '69ff429b-40da-4820-a256-b91e8ce1bb15',
    '55c584c4-1d46-450e-8340-8746384c4c99',
    'IRAZOLA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '5638017f-3d1d-4f15-a2a9-796573f42405',
    '55c584c4-1d46-450e-8340-8746384c4c99',
    'NESHUYA'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '3a96d39a-1ac8-42a2-bef3-ac9ba77d4d2b',
    '55c584c4-1d46-450e-8340-8746384c4c99',
    'PADRE ABAD'
  );

INSERT INTO
  cities (id, state_id, name)
VALUES
  (
    '912e0db2-f7a1-4ce1-a678-18a48a1a3564',
    '39da6594-df70-4cba-8479-3496d07e50dd',
    'PURUS'
  );

INSERT INTO
  districts (id, city_id, name)
VALUES
  (
    '853f24e5-91e2-4cf6-be11-b9d81a5f927f',
    '912e0db2-f7a1-4ce1-a678-18a48a1a3564',
    'PURUS'
  );

INSERT INTO states (id, name)
VALUES
  ('8ac08dd9-5e5c-4be2-9336-450e80e658bc', 'Lima')
ON CONFLICT (id) DO UPDATE
SET name = EXCLUDED.name;

INSERT INTO cities (id, state_id, name)
VALUES
  (
    '1d234970-a495-4137-9fb0-d7a726912bc6',
    '8ac08dd9-5e5c-4be2-9336-450e80e658bc',
    'Lima'
  )
ON CONFLICT (id) DO UPDATE
SET
  state_id = EXCLUDED.state_id,
  name = EXCLUDED.name;

INSERT INTO districts (id, city_id, name)
VALUES
  (
    '16018672-c274-4c20-b7e6-e4cb67f29f59',
    '1d234970-a495-4137-9fb0-d7a726912bc6',
    'Miraflores'
  )
ON CONFLICT (id) DO UPDATE
SET
  city_id = EXCLUDED.city_id,
  name = EXCLUDED.name;

INSERT INTO
  "public"."document_types" (
    "id",
    "code",
    "label",
    "validation_regex",
    "example"
  )
VALUES
  (
    '64c6a6f4-0d58-40b2-868f-0fb483877c1e',
    'CE',
    'Carnet de Extranjería',
    '^[A-Za-z0-9]{1,12}$',
    'N12345678'
  ),
  (
    'c0f37849-0606-49db-85f6-abd868e7c3d1',
    'RUC',
    'Registro Único de Contribuyentes',
    '^(10|20)\d{9}$',
    '20123456789'
  ),
  (
    'f1732989-4ca4-405b-a0ac-2cd995d530dd',
    'DNI',
    'Documento Nacional de Identidad',
    '^\d{8}$',
    '12345678'
  );

INSERT INTO organizations (id, name, address)
VALUES
  (
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e',
    'Qypu Demo',
    'Av. Demo 123'
  )
ON CONFLICT (id) DO UPDATE
SET
  name = EXCLUDED.name,
  address = EXCLUDED.address;

INSERT INTO payment_methods (id, organization_id, name)
VALUES
  (
    'e524346b-0654-4dab-b316-e4d226b5183b',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e',
    'Efectivo'
  ),
  (
    '072c6d19-bd97-4ed9-bf51-d159bf4c3ea9',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e',
    'Yape'
  ),
  (
    'd1d4f840-f481-4246-8e92-5758c7420f0a',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e',
    'Plin'
  ),
  (
    '44ba1246-c72d-4e74-bb3b-0d7ef06ecb2c',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e',
    'Transferencia'
  ),
  (
    '12548b2e-dd18-4fcb-9f6a-bd62993573bd',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e',
    'Tarjetas'
  )
ON CONFLICT (id) DO UPDATE
SET
  organization_id = EXCLUDED.organization_id,
  name = EXCLUDED.name;

INSERT INTO branches (id, organization_id, state_id, city_id, district_id, name)
VALUES
  (
    '5ca29df6-8865-41ee-a1f5-c3c2cc2a10a0',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e',
    '8ac08dd9-5e5c-4be2-9336-450e80e658bc',
    '1d234970-a495-4137-9fb0-d7a726912bc6',
    '16018672-c274-4c20-b7e6-e4cb67f29f59',
    'Sucursal Principal'
  )
ON CONFLICT (id) DO UPDATE
SET
  organization_id = EXCLUDED.organization_id,
  state_id = EXCLUDED.state_id,
  city_id = EXCLUDED.city_id,
  district_id = EXCLUDED.district_id,
  name = EXCLUDED.name;

INSERT INTO categories (id, name, organization_id)
VALUES
  (
    'ee3e8f7c-3052-499d-b29a-2be0a6b6fcb4',
    'Alimentos y Bebidas',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e'
  ),
  (
    'c2b73d38-a42f-47f1-8950-69736f327972',
    'Limpieza',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e'
  ),
  (
    '7702e57c-d2b7-4730-9421-b97d634948a5',
    'Cuidado Personal',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e'
  ),
  (
    '095f4ecb-731d-44c1-9374-de62e0579fd0',
    'Tecnologia',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e'
  ),
  (
    '1c6ae54b-c530-4604-849c-a1b558befbdf',
    'Servicios',
    'ecf83271-3f13-4e48-92e6-b9a9dcd0c01e'
  )
ON CONFLICT (id) DO UPDATE
SET
  name = EXCLUDED.name,
  organization_id = EXCLUDED.organization_id;


COMMIT;
