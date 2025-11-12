using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace CoreAspNet.Models.Data
{
    // AspNetUsers 테이블 매핑
    [Table("aspnetusers")]
    public class AspNetUsers : IdentityDbContext
    {
        /// <summary>
        /// [핵심] 사용자 ID
        /// </summary>
        public string Id { get; set; }
        /// <summary>
        /// -- [로그인] 사용자 이름 (보통 이메일과 동일하게 설정)
        /// </summary>
        public string UserName { get; set; }
        public int Email { get; set; }
        public bool EmailConfirmed { get; set; }

        public string PasswordHash { get; set; }

        public string SecurityStamp { get; set; }

        public string PhoneNumber { get; set; }

        public bool PhoneNumberConfirmed { get; set; }
        public bool TwoFactorEnabled { get; set; }
        public DateTimeOffset? LockoutEnd { get; set; }
        public bool LockoutEnabled { get; set; }

        public int AccessFailedCount { get; set; } = 0;
    }

   // dbset
}
