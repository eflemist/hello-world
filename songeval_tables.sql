/*** This is version 2 checking **/

CREATE TABLE `general_criteria_calc1a` (
  `song_id` varchar(6) NOT NULL,
  `eval_num` int(3) NOT NULL,
  `gen_criteria_name` varchar(25) NOT NULL,
  `score` int(3) NOT NULL,
  `sum_score` int(4) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `general_criteria_detail` (
  `song_id` varchar(6) NOT NULL,
  `eval_num` int(3) NOT NULL,
  `sm_value` int(1) NOT NULL,
  `el_value` int(1) NOT NULL,
  `op_value` int(1) NOT NULL,
  `ks_value` int(1) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `general_criteria_result` (
  `song_id` varchar(6) DEFAULT NULL,
  `score_rating` int(3) DEFAULT NULL
) ENGINE=InnoDB;


CREATE TABLE `song_master` (
  `song_title` varchar(50) DEFAULT NULL,
  `version_num` varchar(3) DEFAULT NULL,
  `song_id` varchar(6) DEFAULT NULL,
  `submitter_name` varchar(50) DEFAULT NULL, 
  `submit_date` date DEFAULT NULL,
  `comments` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `songeval_etl` (
  `submit_time` varchar(50) DEFAULT NULL,
  `song_title` varchar(50) DEFAULT NULL,
  `smsg` int(11) DEFAULT NULL,
  `elrn` int(11) DEFAULT NULL,
  `opsup` int(11) DEFAULT NULL,
  `keysup` int(11) DEFAULT NULL,
  `wsrv` varchar(5) DEFAULT NULL,
  `esrv` varchar(5) DEFAULT NULL,
  `ysrv` varchar(5) DEFAULT NULL,
  `nsel` varchar(5) DEFAULT NULL,
  `ssel` varchar(5) DEFAULT NULL,
  `osel` varchar(5) DEFAULT NULL,
  `add_notes` varchar(255) DEFAULT NULL,
  `kbaval` varchar(5) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `usage_criteria_calc` (
  `song_id` varchar(6) NOT NULL,
  `wsrv_sum` int(2) NOT NULL,
  `esrv_sum` int(2) NOT NULL,
  `ysrv_sum` int(2) NOT NULL,
  `nsel_sum` int(2) NOT NULL,
  `ssel_sum` int(2) NOT NULL,
  `osel_sum` int(2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `usage_criteria_detail` (
  `song_id` varchar(6) NOT NULL,
  `eval_num` int(3) NOT NULL,
  `wsrv_value` int(1) NOT NULL,
  `esrv_value` int(1) NOT NULL,
  `ysrv_value` int(1) NOT NULL,
  `nsel_value` int(1) NOT NULL,
  `ssel_value` int(1) NOT NULL,
  `osel_value` int(1) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `usage_criteria_result` (
  `song_id` varchar(6) NOT NULL,
  `recommend_num` int(3) NOT NULL,
  `recommend_type` varchar(12) NOT NULL,
  `recommend_comment` varchar(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `weighting_value` (
  `gen_criteria_name` varchar(25) DEFAULT NULL,
  `weight_amt` int(2) DEFAULT NULL
) ENGINE=InnoDB;

INSERT INTO `weighting_value` VALUES ('SpiritialMessage',20),('EaseLearn',30),('InstrumentSupport',30),('KeyboardSupport',20);
