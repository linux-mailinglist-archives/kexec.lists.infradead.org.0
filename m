Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E67D1646C5
	for <lists+kexec@lfdr.de>; Wed, 19 Feb 2020 15:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sdmc+3yBLq7JQNfAaR0PFmNH8TMoOrC/c/TF5uhaqew=; b=ZBR
	3u7nHvHYetsq1griIxy3beylIjYuxbagRaYTnWKmCixgo+lqeR5JMnI8TUucYeVohCfegJMHoO3HH
	iQttzMSBc1Z7IPvNwHjpF2Q1TpqLb1nRHOCiBxr4WrZxFw4kCQ/Tk/kNBMX7+GbCSC6GHaytfulVF
	YWvAAauPlP8PrMunfTNg+5a+FHoe8yIeYIw8/y1pySVxCf83AkNufHBci4zr9QoXyxYdVbi69JMpm
	GSmw2q09WqkM1B8uwclBQzAQNUhPUOzJTS4xyK/hnPWsmifOfDUYlsm5xdoCPSDut1Zpdu/wtYP3U
	wCUNDRb8z4sP4HXm7wQKEK8xeAGmSuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QDP-0004Hp-Lq; Wed, 19 Feb 2020 14:20:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QDM-0004HM-Lv
 for kexec@lists.infradead.org; Wed, 19 Feb 2020 14:20:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id w21so180277pgl.9
 for <kexec@lists.infradead.org>; Wed, 19 Feb 2020 06:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LTIXxTsKamaQgBnqjDJXhWOodA2nfbhxlXJcQS82fT4=;
 b=iZ4DvGepQpSHSzRsc9fl7ek4ISJotj8QK1wY8rFLNz3aSWCqYLX7WPVaxi1SR+6MCD
 XLNUbJ6/uArQfEEY09UdgRAL4tkKDyJNHDUSN2AIgRSKEKz9uMS5p7vOimcfQ7k5JUIc
 OxwlDgf4TP99PL48EdL6LVSsRngWcaUUu8tnBAtbhPe+sEwESvILEVMx1ec+fx6iP4P8
 MHlywMlMWdEjyOyfUHfnxpwJ7TDtuuFZmvyNc7liN/2zWWNL0YjovZ7Uyz8ZyROgTgbh
 FjciU9D76QpW1sMOj7tmSLaG7uMnl+i+sWBg49fYl/I4z+UrgA9mmFS3ZqqxyatEDVwu
 H1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LTIXxTsKamaQgBnqjDJXhWOodA2nfbhxlXJcQS82fT4=;
 b=Fu89acIpMGbTTDktRuFDfgQA6mTZzMzrt0GL7luZSXQy7XHB2qMMz0pho4XSyFS++i
 gssSKm/suJ9lYO6kd7CFvyRfG1WstqTp6Gx3JU0/zcMEeH22wa9VEbacs8LAJBsyxdVN
 e0N3MPMXPAbWzKrlVpefKAC2fbAqnwnrOC6Q725l8HWuLxr2JRyJxrWS0Ek/d3XM2aV8
 HdEF+oWbRiRdNFJwk8OdCkJkn/MPbwylIQx2hGxc/oc3DKBUwRDbA3IUm1nbdzNvAsc5
 Wg07Ub2+7cVQiMx1wYiOwWpYSCFm9AFluXoaUXap0WjV0qRNPNfiGt7e3Wbh/1Km5AnZ
 Lkrg==
X-Gm-Message-State: APjAAAWuOSiT/U5jWxwMb9+INDhcXWLB5JTFHtC/KmkFQ60CwstNYWtg
 q8VqbSftgMoVcrOKPu4KWQ==
X-Google-Smtp-Source: APXvYqzeE8k7yP0uggA9cy/SjKGBoYni1Ecfw5qfPE+SB5znERpqq9fj4Vk4TcjMmuk+ekayFY+5Jw==
X-Received: by 2002:a63:1e5e:: with SMTP id p30mr29954146pgm.112.1582122035716; 
 Wed, 19 Feb 2020 06:20:35 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id t15sm2993316pgr.60.2020.02.19.06.20.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Feb 2020 06:20:34 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv3] powerpc/crashkernel: take "mem=" option into account
Date: Wed, 19 Feb 2020 22:18:17 +0800
Message-Id: <1582121897-24336-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_062036_723336_1A6F8B69 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
v2 -> v3: improve commit log
 arch/powerpc/kernel/machine_kexec.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/powerpc/kernel/machine_kexec.c b/arch/powerpc/kernel/machine_kexec.c
index c4ed328..eec96dc 100644
--- a/arch/powerpc/kernel/machine_kexec.c
+++ b/arch/powerpc/kernel/machine_kexec.c
@@ -114,11 +114,12 @@ void machine_kexec(struct kimage *image)
 
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
@@ -185,7 +186,7 @@ void __init reserve_crashkernel(void)
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
