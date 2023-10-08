DROP TABLE IF EXISTS user;

CREATE TABLE `user` (
                        `USER_ID` varchar(128) NOT NULL COMMENT '아이디',
                        `USER_NM` varchar(45) NOT NULL COMMENT '이름',
                        `USER_PW` varchar(128) NOT NULL COMMENT '비밀번호',
                        `USER_ALIAS` varchar(90) DEFAULT NULL COMMENT '별칭',
                        `USER_STATE_CD` char(1) NOT NULL DEFAULT 'U' COMMENT '계정상태_U(사용),P(정지),C(탈퇴)',
                        `USER_PHONE` varchar(11) NOT NULL COMMENT '전화번호',
                        `USER_EMAIL` varchar(100) NOT NULL COMMENT '이메일',
                        `USER_BLOG_NM` varchar(100) DEFAULT NULL COMMENT '블로그명',
                        `USER_BLOG_URL` varchar(1000) DEFAULT NULL COMMENT '블로그URL',
                        `USER_ERR_PW_CNT` tinyint(1) NOT NULL DEFAULT '0' COMMENT '비밀번호오류횟수',
                        `USER_LAST_LOGIN_DT` varchar(45) DEFAULT NULL COMMENT '마지막로그인일자',
                        `USER_ACCESS_IP` varchar(45) DEFAULT NULL COMMENT '접속IP',
                        `USER_REG_ID` varchar(128) NOT NULL COMMENT '등록사용자ID',
                        `UESR_REG_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
                        `USER_UDT_ID` varchar(128) NOT NULL COMMENT '수정사용자ID',
                        `USER_UDT_DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일자',
                        PRIMARY KEY (`USER_ID`)
) COMMENT='사용자 테이블';