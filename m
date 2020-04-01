Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8436D19AD54
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 16:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KMXiHIzGh/klt6y/2frvtG3vY6iGgFD4jgXIUCOldEE=; b=bYzKYq3y3WlJaIlQMKjaiPSq9U
	f4S6yk4Zorio33VUl7y5Qc9j7I7eaMpypgP/h83fLOot9wR1wTC3iW5qiqbg3sEXM5wRjCUn3AlHJ
	zTMYB4VPfbsZ7HyJnKQ+CaUu/Lkk4RKLXoP7AYCWjRN6Rdg9sbb3ECAk0ZrczZCgT32WQhifgLjJt
	egHa9/r/zM+PvtWoH2Ba122Tb+OmIAcWEHbC0YHZi7AxMhgBUHiceEm/Juy0PEj4hS7b5x6Ic8AFZ
	Rv+g7skAvv0GdQvwRKrP4O+eQxUYzrHC+LkE/8uvas6qwvCOlnMuVtmndqHVd4lo4mxIcAlLLaPJL
	h1SAd4dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdxt-0000f9-VB; Wed, 01 Apr 2020 14:03:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdxr-0000eQ-2M
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 14:03:32 +0000
Received: by mail-pl1-x641.google.com with SMTP id k18so4863436pll.6
 for <kexec@lists.infradead.org>; Wed, 01 Apr 2020 07:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EEKP3lV2VlpKQt++4DONOFgvkw+YDut/zygrjE8fEDA=;
 b=i3LUIZfw51umE5QKDQgVBUTOLPMCSjCBRSizxiQqxRn+3P3FlEyaALfQoLgxhjbmUy
 NbZJKLxsVDMuvdRBX6hP5Hi8rqvVTcN1WRk9JHyRU+pgqtrrgGeG+8J8T3Yp6n85oSfZ
 Bo/cgVh2wsyWTn1tkTteDFh7hemSt57oL3EevoGAeAHUfp4BpwPxt5Rj7ghctFV3VamM
 zZhgVnLo4a5ayjTWOwXh0Khs38jP294No0jcQhPdAI5hfvjXoUb9bBfdLWjIvVgy02cC
 O+qCzldUlefOEaR9uFaaFoHJqMvC6m/t3+Oc6fvF4SkxdGSBDZHXONHtKeteQIe7ShGT
 Zbcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EEKP3lV2VlpKQt++4DONOFgvkw+YDut/zygrjE8fEDA=;
 b=a0JbeAxH+X1gWm1rpT9ff/3Cw78aFzQZ2skqEhI7p078KPtHoFvPz0IoTWYpQmz29e
 isdOylJ279vXzd0771GAM70z16W4XaCZfumpwGnQwNw+tc/Cgews1abJtcl/xEF/sHIP
 9HAlFEqMwRJYebFDqV31LdLrvn+U0zfN0VVYnaUalN6efueO8FHkiJyJ/kJuXKClqsNl
 F6V3b+BusxOr6jS0MXgjo9xeA+1UVJPnApmKr9ihQVjTdvyhQFKUnTLafXC2DdK5IarY
 RodLxqW9rrr+2Hj5yVtASEuhJtrwcqbPmUPkKfYRudQLuc1X+K4Hiix5izHeVDLFVYZs
 RHrw==
X-Gm-Message-State: AGi0PuYsF0MDc5R31FLFzKE9MyEDOthmc3OTse+8ovtaUkL8GAvL+eFU
 TBkwc91PM6P661dUqTtSaA==
X-Google-Smtp-Source: APiQypJKxZzuXR4zq/VBEYjPGPea83KhAUBYGp/gTMlJgZj5ehQG+WRwYza2NfDNBVfQcmYvMCaqgw==
X-Received: by 2002:a17:902:9048:: with SMTP id
 w8mr8958739plz.24.1585749809003; 
 Wed, 01 Apr 2020 07:03:29 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id w4sm1662968pfc.57.2020.04.01.07.03.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 07:03:28 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv4] powerpc/crashkernel: take "mem=" option into account
Date: Wed,  1 Apr 2020 22:00:44 +0800
Message-Id: <1585749644-4148-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <48c1b852-28e0-9c46-cafa-7c5992f966a7@linux.ibm.com>
References: <48c1b852-28e0-9c46-cafa-7c5992f966a7@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_070331_135575_6B5ED6DF 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, kexec@lists.infradead.org,
 Hari Bathini <hbathini@linux.ibm.com>, Pingfan Liu <kernelfans@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

'mem=" option is an easy way to put high pressure on memory during some
test. Hence after applying the memory limit, instead of total mem, the
actual usable memory should be considered when reserving mem for
crashkernel. Otherwise the boot up may experience OOM issue.

E.g. it would reserve 4G prior to the change and 512M afterward, if passing
crashkernel="2G-4G:384M,4G-16G:512M,16G-64G:1G,64G-128G:2G,128G-:4G", and
mem=5G on a 256G machine.

This issue is powerpc specific because it puts higher priority on fadump
and kdump reservation than on "mem=". Referring the following code:
    if (fadump_reserve_mem() == 0)
            reserve_crashkernel();
    ...
    /* Ensure that total memory size is page-aligned. */
    limit = ALIGN(memory_limit ?: memblock_phys_mem_size(), PAGE_SIZE);
    memblock_enforce_memory_limit(limit);

While on other arches, the effect of "mem=" takes a higher priority and pass
through memblock_phys_mem_size() before calling reserve_crashkernel().

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Hari Bathini <hbathini@linux.ibm.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: kexec@lists.infradead.org
---
v3 -> v4: fix total_mem_sz based on adjusted memory_limit

 arch/powerpc/kexec/core.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/powerpc/kexec/core.c b/arch/powerpc/kexec/core.c
index 078fe3d..56da5eb 100644
--- a/arch/powerpc/kexec/core.c
+++ b/arch/powerpc/kexec/core.c
@@ -115,11 +115,12 @@ void machine_kexec(struct kimage *image)

 void __init reserve_crashkernel(void)
 {
-	unsigned long long crash_size, crash_base;
+	unsigned long long crash_size, crash_base, total_mem_sz;
 	int ret;

+	total_mem_sz = memory_limit ? memory_limit : memblock_phys_mem_size();
 	/* use common parsing */
-	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
+	ret = parse_crashkernel(boot_command_line, total_mem_sz,
 			&crash_size, &crash_base);
 	if (ret == 0 && crash_size > 0) {
 		crashk_res.start = crash_base;
@@ -178,6 +179,7 @@ void __init reserve_crashkernel(void)
 	/* Crash kernel trumps memory limit */
 	if (memory_limit && memory_limit <= crashk_res.end) {
 		memory_limit = crashk_res.end + 1;
+		total_mem_sz = memory_limit;
 		printk("Adjusted memory limit for crashkernel, now 0x%llx\n",
 		       memory_limit);
 	}
@@ -186,7 +188,7 @@ void __init reserve_crashkernel(void)
 			"for crashkernel (System RAM: %ldMB)\n",
 			(unsigned long)(crash_size >> 20),
 			(unsigned long)(crashk_res.start >> 20),
-			(unsigned long)(memblock_phys_mem_size() >> 20));
+			(unsigned long)(total_mem_sz >> 20));

 	if (!memblock_is_region_memory(crashk_res.start, crash_size) ||
 	    memblock_reserve(crashk_res.start, crash_size)) {
--
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
