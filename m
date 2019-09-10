Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B7CAE7EA
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 12:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n8u/9iHiNLOKhBweceFor0KIlO/TK0zlki8+PALKcGk=; b=PtvW0WZp7M23YH6rV6juhfVmV5
	o/MuIqdqQdH52LePaCQaNYF725v7fF/Gi6ESb9+jvc6lq710MlBkDAL/HLPW4qEZU9e2MR9r47gp4
	onIggn35sRrkCR46JWOYw6rvcUdNg93AZK9KYIj0eg5H/bhZzCMtHa8pFNwLzflxXxM1DG3NqlTUV
	YbhrBR8bjdMxUwsKd2GEYZrVyEL3BVlQVt/XfwLkAIl4VNmRwapwCJeSGDeGng7To/LY2IxUKBTnX
	PZDAivZAJ1vu7vONm1gdMa4koNa+YSEcbYkaub7p5wVUnKHXpZ4IjTtLXuI/H7H1jatwV5dy5W6Hi
	ICp5WLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dHf-0007HG-OU; Tue, 10 Sep 2019 10:22:03 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dHc-0007Fb-M7
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 10:22:02 +0000
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6AF78C05AA58
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 10:22:00 +0000 (UTC)
Received: by mail-pf1-f200.google.com with SMTP id w126so11424166pfd.22
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 03:22:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MHXA6HMbujVDkz44nfIVYvMfNzYo+GyOvZSYbO8Xxrg=;
 b=UG78wezvYLG/9LXqWpH4CMG/7Oor3FiHyKva50vNHD4vqoONauC/Hjc3l6B8mWGHps
 2LqjvX8jm0KWscSpd+1M9l1/O+5ilVUFoF91bIzP4BjUPZSCmUQDgi6GJ3d4unUfihPO
 1qYbNvQEkhNWYQgKAmqb0Zp4xLis8EJhwbE6xkWpaoXnJabrnM9U90sTuYpPlUPcSrxB
 sAN1zpAd77SM5vVy0qCj7E0BgPBC09ef1CGLmH5QF+pi7E5/2HQslP2MDrQ66tc2mxof
 bVBzfpwpuBn6+PI6acmwfukPzzVUNGVymfeIep6CZ0xzNaOngYORBs47Ux4dm7CalbGx
 m6OA==
X-Gm-Message-State: APjAAAXY8jJ2CaUyNmeZTpsvZkNXa2ahreuCNoqbFoy32VcBjyxhc6w4
 P07fi/Hkqm+qZ8LIrdRIAvfgf2bGBF444RxwXktyLbSQ+hvf4RZgzGZVMbv/x6J2YIdnnsJIulH
 IZuNHX7zZJkgjkvwOC2o+
X-Received: by 2002:a62:1747:: with SMTP id 68mr35241884pfx.63.1568110919298; 
 Tue, 10 Sep 2019 03:21:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPBU3kF/3/Fv/n8j3aPxvtU+lDePxuJo7aUchQdmH+pmHjIUhYgha8t59FSmngPlpjYVrmyQ==
X-Received: by 2002:a62:1747:: with SMTP id 68mr35241867pfx.63.1568110919088; 
 Tue, 10 Sep 2019 03:21:59 -0700 (PDT)
Received: from localhost ([171.48.36.77])
 by smtp.gmail.com with ESMTPSA id 71sm33801397pfw.147.2019.09.10.03.21.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Sep 2019 03:21:58 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 1/2] vmcore-dmesg/vmcore-dmesg.c: Fix shifting error reported
 by cppcheck
Date: Tue, 10 Sep 2019 15:51:49 +0530
Message-Id: <20190910102150.7229-2-bhsharma@redhat.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190910102150.7229-1-bhsharma@redhat.com>
References: <20190910102150.7229-1-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_032200_761700_3EB92124 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bhsharma@redhat.com, bhupesh.linux@gmail.com,
 Lianbo Jiang <lijiang@redhat.com>, horms@verge.net.au
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Running 'cppcheck' static code analyzer (see cppcheck(1))
 on 'vmcore-dmesg/vmcore-dmesg.c' shows the following
shifting error:

$ cppcheck  --enable=all  vmcore-dmesg/vmcore-dmesg.c
Checking vmcore-dmesg/vmcore-dmesg.c ...
[vmcore-dmesg/vmcore-dmesg.c:17]: (error) Shifting signed 32-bit value by 31 bits is undefined behaviour

Fix the same via this patch.

Cc: Lianbo Jiang <lijiang@redhat.com>
Cc: Simon Horman <horms@verge.net.au>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 vmcore-dmesg/vmcore-dmesg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/vmcore-dmesg/vmcore-dmesg.c b/vmcore-dmesg/vmcore-dmesg.c
index 81c2a58..122e536 100644
--- a/vmcore-dmesg/vmcore-dmesg.c
+++ b/vmcore-dmesg/vmcore-dmesg.c
@@ -6,7 +6,7 @@ typedef Elf32_Nhdr Elf_Nhdr;
 extern const char *fname;
 
 /* stole this macro from kernel printk.c */
-#define LOG_BUF_LEN_MAX (uint32_t)(1 << 31)
+#define LOG_BUF_LEN_MAX (uint32_t)(1U << 31)
 
 static void write_to_stdout(char *buf, unsigned int nr)
 {
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
