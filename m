Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130494DE6D
	for <lists+kexec@lfdr.de>; Fri, 21 Jun 2019 03:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nab9l6IR6DuJ//uGyMpGQ7ZAr1vQ/26S8Gs1p5yhEV8=; b=lI7ZGe/icXwXB6
	x9RAbSRIq95JaSJ5jzhj5HMkUsAtjwX6r/T9c/m24A19p7V/czXtNXz0zHpCzk2wQ79wz/pj+PGMS
	x/c9d0ynNaW2Lu9ZBWHRLLiMRs6Y0hOi503nBCoNo17ZzIq8YkDr1dTWptkOXjAoxOuKiWwSBf5lS
	n7teUM9sS438fBadNpgUZTcvfyc0gwyh3XLa33HGSgzOXwgHyLWZurre4O4YRdIaMdaYHIwm/wjaw
	sy+pgP4oNt3/tdefJjpSX16jybysJpP4pFKUNkgqVD3Hs6x0aWuBPC+zpbVgr/pTOIMZsOO9JabRT
	ndoJj/wIkA52B+bctxgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he8Dt-00057e-AV; Fri, 21 Jun 2019 01:20:13 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he8Dk-0004Cb-Dq
 for kexec@lists.infradead.org; Fri, 21 Jun 2019 01:20:05 +0000
Received: by mail-pl1-x64a.google.com with SMTP id i3so2666137plb.8
 for <kexec@lists.infradead.org>; Thu, 20 Jun 2019 18:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=NgELRMteSmX1KpxuaMDKOBuc0VBFM90Hd4coc/TmqVU=;
 b=ACSqKMI7rVvJrlydZWykRsEZ0OCQUb++cj7uLN+4lQThNhHP3k3PG9zYi37SyH9Dpn
 rd2VqHFnVXRkQl9OcOSg70pc13+aZIlScD9U8dcWo2cnsffi9SMnRtCCLkwSJ0mOuUL7
 HxS13GpMnI1s5UUVef6KmTow2HmUvlz+z2/jwv6EB2+Vd+0o+rxbiAQ7aKx0ceJZlWUx
 08Bf4/6Jk9EOtgPklFeXx8UuKWqzGkRSE0Bi3XuuN4S6b9RjFN4tCcO2oRFCm8p1OFSu
 JrFkr9Y8BMSFxcV1Zw74qQw28i5Vn+1ZzPo8Kme5IKT7/nwJUbJ5w2XPDlwhLIPqRESj
 ANTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=NgELRMteSmX1KpxuaMDKOBuc0VBFM90Hd4coc/TmqVU=;
 b=qtOyuhjy5XcgtBNg9atH2IUtat3Mo5cDOXrRLeHrsfz9lFKcUgo1xkv21dMeTp6wJV
 tQq4r4O1+FBDI5b6jL8c5xUd8f2/fO/QRcCGmhJ4uRzlF2thdCO0pKLpOIdL+RMT+z8T
 9/rDuYRESclkthIG2+8dFnJz06WDlauWGpgE/V0rPjdntFy451WZklnhi/tWBKJefbjH
 C6pwgOBWBdN8WsLCvlrZx7daj1W+2nMWCotFUD4Ul3qQUtFiOSElBT8Xj2mA3liYO8+V
 3VyV7wrq18JCDSNMZKG23q8pKQIwsDyKzh3PbEi+0JaiPIrTy465nzzKDDUF/7wJD9vd
 rhQA==
X-Gm-Message-State: APjAAAVzuwRcJOkcyzO+Em9Nb3IGJGv9igfpP4AncjPkeB4jXKGKcaVZ
 hANUxmHvDPGQuTjM8+IEKTlOB7aUrJQ86o2DJrbYig==
X-Google-Smtp-Source: APXvYqzIeCMdr3ffaDQRIeVOvllR4sI3try+R35YojEX1TgCv8N6wazXrBjdBnNKX1W9SaKleY/gXbi5H41fVDmPoCOqhA==
X-Received: by 2002:a63:5a4b:: with SMTP id k11mr15535306pgm.143.1561080001656; 
 Thu, 20 Jun 2019 18:20:01 -0700 (PDT)
Date: Thu, 20 Jun 2019 18:19:17 -0700
In-Reply-To: <20190621011941.186255-1-matthewgarrett@google.com>
Message-Id: <20190621011941.186255-7-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190621011941.186255-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH V33 06/30] kexec_load: Disable at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_182004_480568_4A8C4276 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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
 linux-security@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Matthew Garrett <mjg59@google.com>,
 David Howells <dhowells@redhat.com>, Dave Young <dyoung@redhat.com>
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
 kernel/kexec.c               | 7 +++++++
 security/lockdown/lockdown.c | 1 +
 3 files changed, 9 insertions(+)

diff --git a/include/linux/security.h b/include/linux/security.h
index 034a8d54687f..2d3c69b9fd04 100644
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
index 68559808fdfa..040819d7b11b 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -207,6 +207,13 @@ static inline int kexec_load_check(unsigned long nr_segments,
 	if (result < 0)
 		return result;
 
+	/*
+	 * kexec can be used to circumvent module loading restrictions, so
+	 * prevent loading in that case
+	 */
+	if (security_is_locked_down(LOCKDOWN_KEXEC))
+		return -EPERM;
+
 	/*
 	 * Verify we have a legal set of flags
 	 * This leaves us room for future extensions.
diff --git a/security/lockdown/lockdown.c b/security/lockdown/lockdown.c
index 43a049b3b66a..94af1c3583d8 100644
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
