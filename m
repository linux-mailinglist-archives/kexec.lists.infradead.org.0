Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243084F21F
	for <lists+kexec@lfdr.de>; Sat, 22 Jun 2019 02:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHRjWjQLafc19yftcgBeDEeTfEILxgQ7a9IfbD9+xwk=; b=DPoJOTpz0mKmWi
	rX65OWpxXybrKtrsqFVaZnk3ZKqkyZ3MCAiY0IpAwuMY/aWcbNNWOgQ+TbSGln67Y6VSEtjmPT89p
	5zXSPFa0z5msdXOzANWj4YhwCYCkTzuxA2REjB6wWzlzmdQsMNnJUZapbQcuOKgqHpKYSjdxujsiL
	oq9DZbkggfMVQcWIA144z4yc7ucya3avB2s/4PF4D7e5I42vwNdl20SZ/g1b4ZFzZmCT7Chy/iWzH
	0C0Hsx+QimsiMzMj/WGM5xPrSfLzUt1cS/AXI0VnLUTszUJAEJCDnsPmSw4I94oINOYyumhkCkDSP
	wOD4z4sk2rqBYFzqbgwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTW3-00025S-AE; Sat, 22 Jun 2019 00:04:23 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTVz-00024Q-Pb
 for kexec@lists.infradead.org; Sat, 22 Jun 2019 00:04:21 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id 129so2858797vsx.13
 for <kexec@lists.infradead.org>; Fri, 21 Jun 2019 17:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=U/lZ7fD+T6IptDZssnUJlCZR7ScE9UF2AoyQTpT4HbA=;
 b=XGkLNU5iHH7hzuL0cMZIlVDgMLidEQIz9bIMGPNZmvYRjpXgd47gSC1YjKyllW0b8O
 n4cqGDaho8/zL2ugLBApVL0GUyu0YEL8OBR7cSVggwR6jMwP8RLdQ6EcnOB0cxkUrnFb
 TCFyfWFJfKOwNPWdM+oyTiN70K82MbhBazc+Z8WxdR50iyGJwYiDEFeWSlTIE2tIz5dl
 ckMEc++flsaUac43SpRMBhHvqhPoGsLYPEDC5/adpXWXeYSjKXtNWiJPMerIHawYHUsk
 VyZWbQoGyNCtK4zeJgDBeLYOPrK6v2onoPFnZJMQWgjLhlqzV4sYI1qdJTfUDSPGkPSt
 nZUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=U/lZ7fD+T6IptDZssnUJlCZR7ScE9UF2AoyQTpT4HbA=;
 b=VUVG0iJDkmdruKPvqA9W7qwj3WV/ONOw84WsMbg4NeRqu6tTtHTDRJdsbjvkBTMgrk
 nNOFmTh94tnpCjT5yJe4oVcalsaOmwU5YSTsgGBJGPsuoa2h8On8reJD/xFLTs7f4X2p
 MXMhUJyKWj4tINVDYZez7AC1+aQ5clsVFptpFTjfju8IaGrqnDO9HdhGi2AZw/EQHsel
 YZl4lMchg/gg9djJiQbU9J00DOpV3AsTrp12P3X5H5xhb6QJfG/tHWgQ//6ffTUq41ST
 qmfDpM0BR0jfD4NmpCQDd4OmgD0B5Xx2IUdIXY3D0LlQ3brBrQ2oQ44HqRhdE2wV/MjP
 C0rA==
X-Gm-Message-State: APjAAAXHBkHg330VYCDzek+SQOmqQ+Heimsnau6UODrIpj/IfRSy1IRI
 pPoBUw0AtsMUpoVbLu8xZaoPzn9UuHzQUWpPPrGCKw==
X-Google-Smtp-Source: APXvYqziUqgtWLgJrBADFFVvyKB2oLgiiIjHdoYuwv326vdxMw4s35iQ24bb3foHcyDzF6GLXkrPi9QxFNM1SCvcd+SeCw==
X-Received: by 2002:a1f:728b:: with SMTP id n133mr14793805vkc.84.1561161856703; 
 Fri, 21 Jun 2019 17:04:16 -0700 (PDT)
Date: Fri, 21 Jun 2019 17:03:35 -0700
In-Reply-To: <20190622000358.19895-1-matthewgarrett@google.com>
Message-Id: <20190622000358.19895-7-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190622000358.19895-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH V34 06/29] kexec_load: Disable at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_170419_835694_3991A29C 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Matthew Garrett <mjg59@google.com>, David Howells <dhowells@redhat.com>,
 linux-security-module@vger.kernel.org, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Matthew Garrett <mjg59@srcf.ucam.org>

The kexec_load() syscall permits the loading and execution of arbitrary
code in ring 0, which is something that lock-down is meant to prevent. It
makes sense to disable kexec_load() in this situation.

This does not affect kexec_file_load() syscall which can check for a
signature on the image to be booted.

Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: Matthew Garrett <mjg59@google.com>
Acked-by: Dave Young <dyoung@redhat.com>
cc: kexec@lists.infradead.org
---
 include/linux/security.h     | 1 +
 kernel/kexec.c               | 8 ++++++++
 security/lockdown/lockdown.c | 1 +
 3 files changed, 10 insertions(+)

diff --git a/include/linux/security.h b/include/linux/security.h
index 200175c8605a..00a31ab2e5ba 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -84,6 +84,7 @@ enum lockdown_reason {
 	LOCKDOWN_NONE,
 	LOCKDOWN_MODULE_SIGNATURE,
 	LOCKDOWN_DEV_MEM,
+	LOCKDOWN_KEXEC,
 	LOCKDOWN_INTEGRITY_MAX,
 	LOCKDOWN_CONFIDENTIALITY_MAX,
 };
diff --git a/kernel/kexec.c b/kernel/kexec.c
index 68559808fdfa..ec3f07a4b1c0 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -207,6 +207,14 @@ static inline int kexec_load_check(unsigned long nr_segments,
 	if (result < 0)
 		return result;
 
+	/*
+	 * kexec can be used to circumvent module loading restrictions, so
+	 * prevent loading in that case
+	 */
+	result = security_locked_down(LOCKDOWN_KEXEC);
+	if (result)
+		return result;
+
 	/*
 	 * Verify we have a legal set of flags
 	 * This leaves us room for future extensions.
diff --git a/security/lockdown/lockdown.c b/security/lockdown/lockdown.c
index 565c87451f0f..08fcd8116db3 100644
--- a/security/lockdown/lockdown.c
+++ b/security/lockdown/lockdown.c
@@ -20,6 +20,7 @@ static char *lockdown_reasons[LOCKDOWN_CONFIDENTIALITY_MAX+1] = {
 	[LOCKDOWN_NONE] = "none",
 	[LOCKDOWN_MODULE_SIGNATURE] = "unsigned module loading",
 	[LOCKDOWN_DEV_MEM] = "/dev/mem,kmem,port",
+	[LOCKDOWN_KEXEC] = "kexec of unsigned images",
 	[LOCKDOWN_INTEGRITY_MAX] = "integrity",
 	[LOCKDOWN_CONFIDENTIALITY_MAX] = "confidentiality",
 };
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
