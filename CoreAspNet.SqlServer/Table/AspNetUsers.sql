CREATE TABLE [dbo].[AspNetUsers] (
    -- [핵심] 사용자 ID
    [Id] nvarchar(450) NOT NULL, -- (기본값: GUID)

    -- [로그인] 사용자 이름 (보통 이메일과 동일하게 설정)
    [UserName] nvarchar(256) NULL,
   -- [NormalizedUserName] nvarchar(256) NULL, -- (검색/인덱싱을 위한 대문자 변환 값)

    -- [필수] 이메일
    [Email] nvarchar(256) NULL,
    --[NormalizedEmail] nvarchar(256) NULL, -- (검색/인덱싱을 위한 대문자 변환 값)
    [EmailConfirmed] bit NOT NULL, -- (이메일 인증 완료 여부)

    -- [필수] 비밀번호
    [PasswordHash] nvarchar(max) NULL, -- (Salt + Hash 처리된 암호화된 비밀번호)

    -- [보안]
    [SecurityStamp] nvarchar(max) NULL, -- (중요 정보 변경 시 함께 변경되는 보안 토큰)
    [ConcurrencyStamp] nvarchar(max) NULL, -- (데이터 동시성 제어용)

    -- [선택] 전화번호
    [PhoneNumber] nvarchar(max) NULL,
    [PhoneNumberConfirmed] bit NOT NULL, -- (전화번호(SMS) 인증 완료 여부)

    -- [선택] 2단계 인증(MFA)
    [TwoFactorEnabled] bit NOT NULL, -- (2단계 인증 사용 여부)

    -- [계정 잠금]
    [LockoutEnd] datetimeoffset(7) NULL, -- (계정 잠금이 풀리는 시간)
    [LockoutEnabled] bit NOT NULL, -- (로그인 실패 시 계정 잠금 활성화 여부)
    [AccessFailedCount] int Default(0), -- (로그인 실패 횟수)

    -- PK 설정
    CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED ([Id] ASC)
);

GO

-- 검색 속도를 위한 인덱스 자동 생성
CREATE UNIQUE INDEX [UserNameIndex] ON [dbo].[AspNetUsers] (UserName) WHERE (UserName IS NOT NULL);
GO
CREATE INDEX [EmailIndex] ON [dbo].[AspNetUsers] (Id);
GO