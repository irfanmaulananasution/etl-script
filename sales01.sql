#
# TABLE STRUCTURE FOR: product
#

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `product` (`id`, `name`, `description`) VALUES ('0b509fa1-a477-33e6-bcea-b103f63d', 'greenfelderkohler', 'Qui beatae beatae et repellat. Iusto dolor aperiam et qui sint et voluptate. Quibusdam quaerat temporibus rerum distinctio qui dolores ad. Commodi dolore necessitatibus dolorem magni eum ut sed. Perferendis vitae voluptas nulla dolorem ea repellendus aut. Labore eveniet voluptatem impedit minima voluptatum distinctio hic doloremque. Perferendis possimus et labore ipsam.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('178fafb2-4849-3826-ad81-00110e26', 'gleichner', 'Iure et asperiores omnis et natus tempore deleniti. Doloribus id id occaecati amet minus laborum fugiat necessitatibus. Corporis quia vel laboriosam nostrum minus dolorem. Odit animi laborum rerum. Occaecati voluptates autem magnam aut dolorum reprehenderit architecto. Dignissimos expedita velit quae fuga ratione. Odio eaque explicabo natus ad in provident.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('3df69da0-25da-304a-9a6a-79ac3008', 'renner', 'Enim nulla mollitia perspiciatis. Nihil nihil animi dolorem aliquid possimus laborum corporis. Nostrum exercitationem debitis numquam soluta deserunt ea quidem. Sequi aut omnis maxime eum. Voluptatem est pariatur fuga deserunt. Sunt quod debitis eos rerum omnis eum odit.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('42aba161-1de4-3394-9a3a-9702ebf5', 'ledner', 'Architecto quasi delectus repellat voluptatem. Ab suscipit est a ullam aut. Ut commodi esse iusto et consequatur. Excepturi sequi quae eaque itaque qui.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('68573db6-06ce-3fd5-b943-4868f305', 'douglas', 'Natus aut non cumque rerum qui molestias non. Est in provident ipsum neque in quia. Ut fuga in voluptate exercitationem sunt consequatur. Dicta ut quia aut. Dolorem rerum aut in totam quo ut.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('7eb7b57c-210c-3845-b771-1f49ff73', 'gleason', 'Est illo consequatur aspernatur qui voluptatem commodi odit. Delectus ea velit sequi ad omnis. Molestias impedit incidunt rerum repudiandae maiores quisquam explicabo molestias. Facilis fugiat accusantium qui. Corporis qui voluptates et. Quia maxime ut dolorem et dolorem.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('8c5b88a5-07e9-3636-bd3b-427f9625', 'watsica', 'Aliquid soluta mollitia deleniti omnis quia. Pariatur laudantium mollitia deleniti fugiat enim itaque. Nihil sunt repudiandae quibusdam ut est adipisci. Non enim distinctio quae eius amet quia. Similique voluptatem recusandae facilis quibusdam impedit.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('9eeef2f1-78ee-34b3-8ffa-68dac258', 'nolanharris', 'Suscipit rerum amet qui quo consequatur mollitia. Amet dignissimos sed necessitatibus quis officiis occaecati. Sed deleniti rem dolores sit harum sed. Tempora excepturi molestiae quia tempore aliquid velit. Magni dolorem consequatur modi mollitia. Aut sed animi maxime.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('a77386a8-dfc7-3ff5-9dd6-6a5f5ea6', 'dietrich', 'Unde numquam quisquam ex vero. Accusantium dolores assumenda possimus enim consectetur ut omnis. Voluptas consequuntur ex tempore nihil distinctio. Officia aperiam ipsam minima labore veritatis minus. Nisi nisi ullam suscipit nulla. Hic hic rem cupiditate autem.');
INSERT INTO `product` (`id`, `name`, `description`) VALUES ('a810f6ee-1192-387e-89f1-8b876845', 'blickhickle', 'Nisi ipsum vitae delectus facilis ducimus non accusamus. Ex autem laudantium rerum id veritatis ut sapiente. Optio quo qui error ea eius beatae. Ab aspernatur qui hic doloremque quis animi veritatis consequatur. Nihil facere dolor tenetur autem distinctio ut ea. Soluta sit consequatur quae ipsa ut perspiciatis. Ducimus soluta eveniet ex hic.');


#
# TABLE STRUCTURE FOR: transaction
#

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `quantity` int(10) NOT NULL,
  `unit_price` int(15) NOT NULL,
  `transaction_time` bigint(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('00ff7cc5-12b5-3300-94ee-9b6c09dd', '2b5309a4-850a-3699-92c7-47f3cf61', 'a77386a8-dfc7-3ff5-9dd6-6a5f5ea6', 695, 67, '1610401583878201');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('0e953423-b275-398d-bdf4-9d28b68d', '35016202-661c-3241-ab9c-ab8ab889', '0b509fa1-a477-33e6-bcea-b103f63d', 403, 86, '1610356404247579');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('0f3bbc9e-92e6-37d8-902f-53613483', 'b9a8487a-4e77-3746-9c17-e184f3c3', '7eb7b57c-210c-3845-b771-1f49ff73', 395, 68, '1609786033999112');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('13a47fd3-7bca-3805-9574-f78bc66a', '6aac8ffd-bf5c-3b79-90fe-f4459264', '9eeef2f1-78ee-34b3-8ffa-68dac258', 692, 89, '1610809471815464');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('15fb5cea-cfd8-3496-9ebd-10897d92', '9be4740d-9045-37f3-9d4b-679a3c2f', '3df69da0-25da-304a-9a6a-79ac3008', 1, 30, '1610468656414819');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('2469e13d-80a0-39a0-b8f4-c3b590a6', '7859d463-a29d-30be-9072-ada90695', 'a810f6ee-1192-387e-89f1-8b876845', 279, 22, '1609513901057553');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('26f09376-20ef-3320-8d3d-09988d51', '1fbed233-aa50-3c9c-9354-1d226dbf', '68573db6-06ce-3fd5-b943-4868f305', 763, 35, '1609603535967868');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('2808aed5-ad7a-3ce9-90b0-54aa3a9f', '395ebe0f-d7a6-36bc-9a2a-006f0d1d', '178fafb2-4849-3826-ad81-00110e26', 486, 28, '1610027817384106');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('2ef30510-a492-31eb-846f-167e5ee1', '10de20b5-9e2c-3c52-a2cd-d29cf4db', '178fafb2-4849-3826-ad81-00110e26', 820, 69, '1610357199558896');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('36658797-764e-3e93-913d-36a546fc', '6f7fd909-c476-3fe7-8496-f9554298', 'a77386a8-dfc7-3ff5-9dd6-6a5f5ea6', 828, 68, '1610015627008465');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('38a0a5e1-73a4-37b3-ae03-1cc9607e', '1c9ad65c-6f3e-3028-a075-92c47779', '42aba161-1de4-3394-9a3a-9702ebf5', 350, 43, '1609764917604294');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('44fdae95-116b-3cd0-a8d2-cc4bdaad', '032454bb-6d45-365d-93ac-c52cda5c', '0b509fa1-a477-33e6-bcea-b103f63d', 361, 21, '1610026256943565');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('4fe5f815-cc27-3116-be14-a3e2d4c6', '23c94d32-e254-3ec5-857f-3c8a6777', '7eb7b57c-210c-3845-b771-1f49ff73', 290, 43, '1609917132321220');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('529ceb26-3ab7-3215-a847-115c1d2c', '51a6c484-0e37-3da8-8737-ce4eb2c3', '68573db6-06ce-3fd5-b943-4868f305', 46, 11, '1611144115643066');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('5414c1cc-8198-3e2d-90d8-1ecebf4a', '51a6c484-0e37-3da8-8737-ce4eb2c3', '68573db6-06ce-3fd5-b943-4868f305', 551, 4, '1610461776879412');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('592074eb-a421-3df8-8b86-c50819ae', '314bfaef-14c5-3085-a267-5ab1e275', 'a810f6ee-1192-387e-89f1-8b876845', 205, 2, '1610328202150699');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('5a946b58-b3b5-3e65-a15a-67f0063e', '5a40d624-38cd-337d-b805-c61528c4', '7eb7b57c-210c-3845-b771-1f49ff73', 445, 33, '1610133132320416');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('6145e5d5-e1ab-376b-a40e-2bbcd893', 'd9f4f2be-0bcd-3e76-a4e8-cf2599ea', '8c5b88a5-07e9-3636-bd3b-427f9625', 715, 48, '1611515682951746');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('65491ee8-5b20-33d8-93fc-ffa8a2cd', '10de20b5-9e2c-3c52-a2cd-d29cf4db', '178fafb2-4849-3826-ad81-00110e26', 650, 44, '1609563034753632');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('67e36f40-df5e-315b-8746-b80d807c', 'b5f98ab0-9864-33fb-bd52-662e5ab5', '68573db6-06ce-3fd5-b943-4868f305', 428, 91, '1609541046227154');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('6a2264aa-23e2-3878-98d1-568c99a8', '6aac8ffd-bf5c-3b79-90fe-f4459264', '9eeef2f1-78ee-34b3-8ffa-68dac258', 511, 71, '1610839845796761');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('6b799c9f-e08c-33ea-8447-49b69df0', 'b2aeab74-c4df-3ad3-9ea6-00ef5089', '42aba161-1de4-3394-9a3a-9702ebf5', 528, 57, '1610938997187746');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('6c6fff06-d8da-36d8-8052-9628a98c', '3ba634f1-dd15-3710-b5fe-f805f625', '3df69da0-25da-304a-9a6a-79ac3008', 71, 26, '1609619594143894');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('6d977602-2cd5-32aa-a883-664f1cd2', 'e5788a19-eb71-3bb6-a3ec-967c5754', '9eeef2f1-78ee-34b3-8ffa-68dac258', 310, 79, '1611100931532097');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('79d9d688-d864-36b9-96e8-5657349e', '314bfaef-14c5-3085-a267-5ab1e275', 'a810f6ee-1192-387e-89f1-8b876845', 771, 27, '1611134344938067');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('7d7e4144-a47d-3225-95fa-4fb13801', '240fd53f-9392-3f2e-9242-e85f46c7', '8c5b88a5-07e9-3636-bd3b-427f9625', 67, 64, '1611016555737493');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('80e6cc1e-4e48-30d5-9442-875e903e', '2b5309a4-850a-3699-92c7-47f3cf61', 'a77386a8-dfc7-3ff5-9dd6-6a5f5ea6', 120, 42, '1610357327738044');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('8353ed7a-10e5-3c8a-8e68-b9eb7d7c', '5a40d624-38cd-337d-b805-c61528c4', '7eb7b57c-210c-3845-b771-1f49ff73', 162, 45, '1610753978290272');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('876d9898-9ae2-359c-8979-f72a838c', '11d8b61c-c688-354b-864c-b840d5e5', '3df69da0-25da-304a-9a6a-79ac3008', 787, 53, '1610526801965457');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('87815ea2-3d28-38fc-8561-187c0ee8', '3f43f328-9f7b-3000-b318-9f05bfde', '42aba161-1de4-3394-9a3a-9702ebf5', 72, 55, '1610706867473987');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('94607487-2c82-3c97-9e7e-c73221e0', '240fd53f-9392-3f2e-9242-e85f46c7', '8c5b88a5-07e9-3636-bd3b-427f9625', 506, 17, '1609850179059755');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('99267485-0934-3f23-9c32-68625fa5', '032454bb-6d45-365d-93ac-c52cda5c', '0b509fa1-a477-33e6-bcea-b103f63d', 150, 56, '1609881511249494');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('aae80cdf-99a7-3ef6-8f5a-9997975a', '23c94d32-e254-3ec5-857f-3c8a6777', '7eb7b57c-210c-3845-b771-1f49ff73', 32, 81, '1611699714553428');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('aee9e831-39c6-3750-b681-681a4cb4', '11d8b61c-c688-354b-864c-b840d5e5', '3df69da0-25da-304a-9a6a-79ac3008', 684, 48, '1611401906369117');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('ba4a5c8f-1cf5-3a44-a34b-f75b7d5c', '3ba634f1-dd15-3710-b5fe-f805f625', '3df69da0-25da-304a-9a6a-79ac3008', 340, 94, '1610548018054363');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('baba691f-3fb2-3863-a4b4-8f8d8c90', 'fdc35c0d-7d1a-3915-b303-0dde58ef', 'a77386a8-dfc7-3ff5-9dd6-6a5f5ea6', 257, 91, '1610114803022128');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('beeaa6f7-d151-38e9-a6fa-ba27c344', 'ff071c2b-d80a-3395-b2cb-c943618d', 'a810f6ee-1192-387e-89f1-8b876845', 388, 73, '1610595243250233');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('c17d5f33-1e13-34fe-a7bf-2c9f4d0c', '2424fd85-e96b-3424-b06e-fb4001be', '9eeef2f1-78ee-34b3-8ffa-68dac258', 713, 96, '1611353101654959');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('c3c80d5d-29dc-34ee-9cb1-2c0ec3cc', '652c0fa3-5dc7-35bf-9dd9-43a36478', '8c5b88a5-07e9-3636-bd3b-427f9625', 322, 22, '1610645973086116');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('c72de1a5-9c34-35ea-8ba6-fa3f8a29', '7859d463-a29d-30be-9072-ada90695', 'a810f6ee-1192-387e-89f1-8b876845', 829, 56, '1610047332062807');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('d3de6d47-e7a2-3a88-8b2c-d3298102', '395ebe0f-d7a6-36bc-9a2a-006f0d1d', '178fafb2-4849-3826-ad81-00110e26', 527, 85, '1610795148827371');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('d4559add-802c-30e8-ad37-67c40d51', '1c9ad65c-6f3e-3028-a075-92c47779', '42aba161-1de4-3394-9a3a-9702ebf5', 899, 67, '1610011970976394');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('d86b3195-da65-369a-ac1c-44a128d3', '3f43f328-9f7b-3000-b318-9f05bfde', '42aba161-1de4-3394-9a3a-9702ebf5', 563, 75, '1611648513614488');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('daf72b1a-2dea-3ba5-aafb-c918832f', '1fbed233-aa50-3c9c-9354-1d226dbf', '68573db6-06ce-3fd5-b943-4868f305', 393, 5, '1610431725206566');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('de4b849c-8345-319c-94c3-53613ff9', '652c0fa3-5dc7-35bf-9dd9-43a36478', '8c5b88a5-07e9-3636-bd3b-427f9625', 201, 81, '1610034619908464');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('e54ef8f0-01fd-32b6-9b8d-cb850520', '2424fd85-e96b-3424-b06e-fb4001be', '9eeef2f1-78ee-34b3-8ffa-68dac258', 703, 72, '1609975542728600');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('f708cbcb-ff75-3e1a-808e-e7e92791', '35016202-661c-3241-ab9c-ab8ab889', '0b509fa1-a477-33e6-bcea-b103f63d', 476, 71, '1611931003431675');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('f8785edf-df81-331e-b5bc-b0fccf44', '8b16e958-5d6f-366e-a4b8-c14b724d', '0b509fa1-a477-33e6-bcea-b103f63d', 149, 68, '1609621397336286');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('faf72921-bece-3e76-88c8-2f96d6ca', '6f7fd909-c476-3fe7-8496-f9554298', 'a77386a8-dfc7-3ff5-9dd6-6a5f5ea6', 580, 1, '1611576207008493');
INSERT INTO `transaction` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`, `transaction_time`) VALUES ('fca4a4b6-0cd3-3ee7-ba97-27c38df2', '974369a9-8305-3ddd-b5eb-23f6559e', '178fafb2-4849-3826-ad81-00110e26', 291, 77, '1611457485833493');


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `name`, `email`) VALUES ('032454bb-6d45-365d-93ac-c52cda5c', 'Mallie Cummings', 'domenic.sipes@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('10de20b5-9e2c-3c52-a2cd-d29cf4db', 'Brain Sporer', 'clint57@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('11d8b61c-c688-354b-864c-b840d5e5', 'Kane Wunsch PhD', 'geovanny.swaniawski@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('1c9ad65c-6f3e-3028-a075-92c47779', 'Eunice Kemmer Jr.', 'abdul14@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('1fbed233-aa50-3c9c-9354-1d226dbf', 'Leonor Fadel', 'mariah43@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('23c94d32-e254-3ec5-857f-3c8a6777', 'Colleen Graham DDS', 'upton.katlynn@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('240fd53f-9392-3f2e-9242-e85f46c7', 'Cristal Wisozk', 'icummings@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('2424fd85-e96b-3424-b06e-fb4001be', 'Mr. Zane Koepp MD', 'jennings.padberg@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('2b5309a4-850a-3699-92c7-47f3cf61', 'Prof. Angel Abshire III', 'celestino20@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('314bfaef-14c5-3085-a267-5ab1e275', 'Mollie Senger', 'dhammes@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('35016202-661c-3241-ab9c-ab8ab889', 'Prof. Roberta Waelchi IV', 'reilly.keely@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('395ebe0f-d7a6-36bc-9a2a-006f0d1d', 'Dr. Abel Fadel', 'oromaguera@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('3ba634f1-dd15-3710-b5fe-f805f625', 'Providenci Labadie', 'mraz.liam@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('3f43f328-9f7b-3000-b318-9f05bfde', 'Judah Hand', 'schimmel.waylon@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('51a6c484-0e37-3da8-8737-ce4eb2c3', 'Kennedy Kozey V', 'btowne@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('5a40d624-38cd-337d-b805-c61528c4', 'Garry Konopelski', 'dubuque.shea@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('652c0fa3-5dc7-35bf-9dd9-43a36478', 'Antonia Treutel', 'desmond60@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('6aac8ffd-bf5c-3b79-90fe-f4459264', 'Dwight Wiegand MD', 'herta07@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('6f7fd909-c476-3fe7-8496-f9554298', 'Luis Krajcik', 'shirley.flatley@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('7859d463-a29d-30be-9072-ada90695', 'Rafaela Sauer', 'thiel.sienna@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('8b16e958-5d6f-366e-a4b8-c14b724d', 'Tracy Bartell', 'cassandre13@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('974369a9-8305-3ddd-b5eb-23f6559e', 'Victoria Kautzer', 'gkuhic@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('9be4740d-9045-37f3-9d4b-679a3c2f', 'Wilford Johnston Jr.', 'tblick@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('b2aeab74-c4df-3ad3-9ea6-00ef5089', 'Dane O\'Kon', 'xreilly@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('b5f98ab0-9864-33fb-bd52-662e5ab5', 'Darien Hartmann', 'snitzsche@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('b9a8487a-4e77-3746-9c17-e184f3c3', 'Sandrine O\'Reilly Jr.', 'iruecker@example.net');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('d9f4f2be-0bcd-3e76-a4e8-cf2599ea', 'Monica Barton', 'o\'conner.maybelle@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('e5788a19-eb71-3bb6-a3ec-967c5754', 'Fabiola Schamberger', 'reichert.sylvester@example.org');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('fdc35c0d-7d1a-3915-b303-0dde58ef', 'Alicia Steuber', 'hoeger.april@example.com');
INSERT INTO `user` (`id`, `name`, `email`) VALUES ('ff071c2b-d80a-3395-b2cb-c943618d', 'June Batz', 'ellis99@example.org');


