
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Christine Moore', 'Evelyn Kent', 51000, '2021-05-14 14:29:15'),
(2, 'Willbert Flyn', 'Keith McKay', 25000, '2021-05-14 18:40:51'),
(3, 'Natalie Cloutier', 'Thomas Greenwood', 5000, '2021-05-14 19:16:56'),
(4, 'Thomas Greenwood', 'Natalie Cloutier', 26950, '2021-05-14 19:31:07'),
(5, 'Matthew Ingalls', 'Kelly Wilkins', 7510, '2021-05-14 20:15:14'),
(6, 'Kelly Wilkins', 'Michelle Cruz', 35100, '2021-05-14 20:15:47'),
(7, 'Thomas Greenwood', 'Keith McKay', 3150, '2021-05-14 20:16:51');



CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(1, 'Cassie Perkins', 'cassiep@gmail.com', 'Female', 62500),
(2, 'Keith McKay', 'keithmc@gmail.com', 'Male', 40650),
(3, 'Michelle Cruz', 'cruzmch@gmail.com', 'Female', 113750),
(4, 'Willbert Flyn', 'willbertfl@gmail.com', 'Male', 100005),
(5, 'Natalie Cloutier', 'natcloutier@gmail.com', 'Female', 127350),
(6, 'Evelyn Kent', 'evelynkent@gmail.com', 'Female', 81000),
(7, 'John Russel', 'russelj@gmail.com', 'Male', 69005),
(8, 'Virginia Hopkins', 'virginhop@gmail.com', 'Female', 210300),
(9, 'Christine Moore', 'christine@gmail.com', 'Female', 99000),
(10, 'Thomas Greenwood', 'thomasgr@gmail.com', 'Male', 40000),
(19, 'Matthew Ingalls', 'matthewlls@gmail.com', 'Male', 40000),
(20, 'Kelly Wilkins', 'wilkelly@gmail.com', 'Female', 29610);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

