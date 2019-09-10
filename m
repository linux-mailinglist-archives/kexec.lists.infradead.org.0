Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FC5AE351
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 07:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a0nHq5Ltikwhl8QkHQn/Ycqm2l9aoQFv+WC2yGYP9f0=; b=Pmv
	1EH0iS7zOXgEApbC1+NWODqN2dPjFSZNQfoVrwYxFNdnDe72RrsbPL0Piph/xrkYOKMSRzJNAha2R
	RAoVEyBsFD1w0CRUpwB2RIjprzuc23oCvX8RQgzlWJXL4YA7jJ2QQpmKmonfKro6hNoXpzp3BeuUm
	66JcVq7Qjeuw2ZzPv5yYRzQh/GEkiQxWlztmui/9LYsVMc/oHZwANT1xMZR8Q3G0BQJbiKzh9XR3M
	rcAz/YqtfLLpJoag2g59IaGOA5qw6mE2iLdN+wLDUCfx6KABFP9jzvfFluFX6LOJiHosotRctBSet
	D3VP8t2d8YJpez6r+8JQAgRb7k0N2cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Yyb-0006mZ-8P; Tue, 10 Sep 2019 05:46:05 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7YyS-0006mE-PI
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 05:45:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id w22so10855044pfi.9
 for <kexec@lists.infradead.org>; Mon, 09 Sep 2019 22:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OWhPZmeLV0gT6q1ixl69Ql1KOe/luKLyfI6eTBpC558=;
 b=KYa6yglxDphEd5+J//mPp14GAYQQsH6ezjnhY/bRvvbCSmYkWW7ZB2cdpPrvXXT6dR
 DOokx5aacTtkhXUGd5XyH0pCCf1yFNVWVAISTKlgr4O8L59Z47HmJ8Ki77mrEm5IIXpd
 yHfC+HjA9quvLN0XrR/zzLiRQLjkguYLWIvHVwmQ8wO2dRm5PiNTXXHWohN4ry+R2gAr
 uNluPYpK4p9juq0eoCW/s6OJLvthJcBSo+XXDbHnCSHx6yHMNzGbvlJH0aa5s2J+/u2/
 RrvumWQHlo9T2B1tKr0I7yHzUlOsDKbZLVhKSuDld9ZFN8UDdoJE5G0oMXG0C5USxLmm
 J4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OWhPZmeLV0gT6q1ixl69Ql1KOe/luKLyfI6eTBpC558=;
 b=b4tLfUZeygRjS2xidDHLVZt5OVXF+oauNG0tUxKqZrjVemjOx7yc6uWlkhKnNhYmKJ
 KyGDQcS1V+MvEuO1sR3SsYKMa4cGBZfxhWlSOTma1fDSeGYS/CW2/q2YNMebCl1Pj47k
 H9zYPmI+4OI0Uqi211LSCg3tHgpXZH9UVtdiD0X9zMEBtmGqcy4Oi866AksPPZ1Q/+hy
 A3epniiOkadKdgdEiqIKYQ5GYHOW+EkgjNyhwoV6N74l0mui0WqLqj5ykTjfZDG2tX9E
 JcxBa1WNZp846C6c6dJvmV75ybDHqlbAFrz0578SSigenwnBNYOxamZjdxGr/wnRIAZr
 Bsvw==
X-Gm-Message-State: APjAAAXfkCKwBaDbMy0X2+V0y+kUSkKxVpMW/RCt0YX2TERuNEMvo3QE
 X2pQSmUXMVyAISbuiu09P4RK7iIL
X-Google-Smtp-Source: APXvYqwyOWCbh0x0bbkrNp42qln3ZkMo95dy2TkL2O8SJfrTdZOsE8Pn6E+nYoqmUJ6YVRJY/AWpxw==
X-Received: by 2002:aa7:9ab6:: with SMTP id x22mr32552166pfi.15.1568094355016; 
 Mon, 09 Sep 2019 22:45:55 -0700 (PDT)
Received: from pek-qwang2-d1.wrs.com (unknown-178-22.windriver.com.
 [147.11.178.22])
 by smtp.gmail.com with ESMTPSA id e10sm23191281pfh.77.2019.09.09.22.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 22:45:54 -0700 (PDT)
From: quanyang.w@gmail.com
To: horms@verge.net.au
Subject: [PATCH] kexec/arm: undefine __NR_kexec_file_load for arm
Date: Tue, 10 Sep 2019 13:43:48 +0800
Message-Id: <20190910054348.26503-1-quanyang.w@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_224556_850940_56059101 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (quanyang.w[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: kexec@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Quanyang Wang <quanyang.wang@windriver.com>

In the kernel upstream commit 4ab65ba7a5cb
("ARM: add kexec_file_load system call number"),
__NR_kexec_file_load for arm has been defined to be 401.
This results that even if kexec_file_load isn't implemented
for arm but the function is_kexec_file_load_implemented()
will still return true. So undef __NR_kexec_file_load for
arm architecture.

Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
---
 kexec/kexec-syscall.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kexec/kexec-syscall.h b/kexec/kexec-syscall.h
index dac1c1f..92d51d3 100644
--- a/kexec/kexec-syscall.h
+++ b/kexec/kexec-syscall.h
@@ -56,6 +56,10 @@
 #endif
 #endif /*ifndef __NR_kexec_load*/
 
+#ifdef __arm__
+#undef __NR_kexec_file_load
+#endif
+
 #ifndef __NR_kexec_file_load
 
 #ifdef __x86_64__
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
