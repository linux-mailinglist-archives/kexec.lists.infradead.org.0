Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046B37C6F2
	for <lists+kexec@lfdr.de>; Wed, 31 Jul 2019 17:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVn3Q5vgyJcKMrIqYiWwFpHN3lTTvqjbAv6FqBia2JU=; b=KrD0Lt4ipsbxs8
	Ljq53f4SBHfDl3asx6p6BrWqPyZwcaZtdzxOK+LJEu1a+yxk6nSv3HfDfWGGLizg7AK4iH0I10H8v
	LTjtXNpElijc+FXkeUodAjslAaiYbKkQwkCFJaqK0kOVzTPlgxcqEkENkOH6tWt21+CXAk5fF6moY
	Yxqj0yFh54KoZntwgZbxMo7C/Tggwza/UwIoQBtg+v2vC4BsFAzqEakYHz97uY6ietpd+Mig2M8Xf
	CZOLZ6j46AkzxNQ8M+8hCWB1r5vhWXfZF4gh8Rgg/VARzE8LLdW/kdet37rxl9necUu3jA1OxI36y
	pfvCaZMroybye7CI9xcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqgz-0007ka-Vx; Wed, 31 Jul 2019 15:39:06 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqgv-0007hg-Sx
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 15:39:03 +0000
Received: by mail-qt1-x841.google.com with SMTP id a15so66991720qtn.7
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 08:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=f/mj0qEdjPvowxzxCkz1WBHsoz6X08MjhaCvOP9JKChUzdvXGCDjmIksTr75NmrETe
 GR0NJA4z1vIEH0dzoq8OvrHbM6EdjK+AohOXseaucGCyJn1Xewil/BIr2BORcK8Y8r+W
 B1JzbU1hdtMsW+Qq72doDnCa9Cyf/4J1EsfdmNeeVCidWQbLHt+DkzFZUp2EXOkbnkdG
 EvW/gLPfttAw50rqtj3FU3JdgGfBzBnstUC/k66NtOwuC0Nqlg1fr2V9VIaZji8gnYBA
 Oa1jc7STRN3fH47wz3Yk1rreSvslGvBiO2R7vofvw5mmc48VryeJE4V7i1rRlbMbWKxH
 l5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=Z4R+Z+vRyptWc45Gvq0irgfQHYPU2AWBsdVcbm5iOs538C8/uBfkCODG2HVX1KZBIe
 EmnFtCLzijLul2+H1enXLsAt1Nmx5M1Wfvk7aR5NH/ekd3W9R2cWk/+GoewNvd+7rEYr
 1M8d6x+RkA7ddszfeUa31n3PRzF8N4U3RU+gHG9PTUBj48OIQXx45epriOr8FNFMSePd
 yvmHDQ+tmwYz6xS9axyAtdu94qCl/aKx1ES+Oa+cju0TijkhId7ejvoNUdjoGh/d6ZmN
 2EXF5oPStSrWu9zMzFPwFbB/l+eMNfYBgr2HuUNTOHBciXIwfy9bTvdWT/nG/LIFFmf6
 F7ZA==
X-Gm-Message-State: APjAAAVzMU1uy8dZuK0XLJJasp7rvPH4vnHRaQdw1lJUtXyNPM6BbnF0
 vW8UGJJzZ9nkSYJZ4Ra2LnA=
X-Google-Smtp-Source: APXvYqxvBo52tjJ6/0c0xwHoZtK9MewLNPfKHRcGHVWsI64uRmnRR/4lWkfMBAzaWutbGo9baKuA9g==
X-Received: by 2002:a0c:afd5:: with SMTP id t21mr88223958qvc.105.1564587540796; 
 Wed, 31 Jul 2019 08:39:00 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.38.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:39:00 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 1/8] kexec: quiet down kexec reboot
Date: Wed, 31 Jul 2019 11:38:50 -0400
Message-Id: <20190731153857.4045-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083901_933205_B45A0F21 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index d5870723b8ad..2c5b72863b7b 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1169,7 +1169,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
