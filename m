Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A522295245
	for <lists+kexec@lfdr.de>; Tue, 20 Aug 2019 02:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=061ctfSURjKNJ+/obNW4aSxIqkEBLY8zDdSBRJ3eE60=; b=eommF8FNaDEI0G
	LRNjSezk+Q6thxUMK2PJo7joBi8i/vIBrVHQMuDOrAG17IAgo3LakUK0K3j2rogxOyHUTM/KML+Us
	GHnstGmy6E0QK7mziUCwjs49JYMXYcbx1u6Bm/FdP4CMxEnH8qHOLnaUpWH+eLAeghGHM0Azr1VgG
	fu/MshU0/R21FjpnwzdpK9q3EEztmktOl5/tM7C901m0AajCEYlMkPuxZlvdJ2lgdtlWR2/QjvrEH
	8orqSR4Ung4TwZlHie+6hqfKmbTpn6Ap1rF0wgXhLvQShx2PpFwNZbjgWOMpWkblOxMw2gZDtTyCw
	RzCllmQWpebjXW6OV/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrr6-0006H3-ML; Tue, 20 Aug 2019 00:18:32 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrr1-0006Fr-U1
 for kexec@lists.infradead.org; Tue, 20 Aug 2019 00:18:29 +0000
Received: by mail-pf1-x449.google.com with SMTP id e13so3530782pff.9
 for <kexec@lists.infradead.org>; Mon, 19 Aug 2019 17:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=aETaOEPelySVl3QKK9Qr+qOWAsUAyXrm7SwwhN9vG4c=;
 b=KhujlyI2R6CEvYLT/F0SfZBAYudHduHuG5bZC22M5mysowFDhbeQ+KtmAa2GL+arTd
 ftXTboaJS5SyEuwjIFnjLzFD3F1edbJS+pifqs9WbNF9zE/hyk6bk+GHH5cqSmJPImAW
 9Cavog1sTHJeQrWVJgdqMWImMQMxJFER0njBKXSFJMCBMzAX2DjrIIB05xDViM7bEXC6
 Tolcpnnock/s2dnEVBo4OaAKzHAQ4bXrZLiRP/b1kKxHg9G0JLEAtNuA8C5e+3eNGEh9
 yXCIfRVuj2JYvB/WKS9SEa1/3vFVqnmUa8t7IVZi8dFGhhhyFvgweYkxnUpU0ufI66MY
 ZcpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=aETaOEPelySVl3QKK9Qr+qOWAsUAyXrm7SwwhN9vG4c=;
 b=hF2nJjARwLww7THlfnAttmnRcXbCN3/HrUaIsYDhj76H/IHyhdzSusdC+QfJviqziV
 5H6DwrS+ktQI90hCN2PZcqAgX5++qaTKHbHK1AVW0RYkjDXDpKooiDBrQ9BOuSH/pq5f
 b/1fj9+eFnWKzjW1Q7p4NQRaFnBmitux0Ouik6IeLdgK5fQE2LNJQcruB2POyixvBb5s
 vn6Mj2nSrmFTUN+TknU5JGio0nDyyPMectPs/myJwl7Armkeq/RfvZLq9wUHIiFLpQaC
 mzvaZMYoo3wjmoq7kU4OgIu7p286k1yPhnkThtKL4bZ4qZIzlGhRE9JiTor/Awv8uzry
 6yWw==
X-Gm-Message-State: APjAAAV88j1ZnwoeB0L4Wn3kSVVrLu4uHlFm9JfmRGMMnWj0BIeAE4ao
 /c5mmNOlQfflMNjlFY9ejHa6HIN2yaztGCOi1GzBPw==
X-Google-Smtp-Source: APXvYqxt9fKQKKi62I+GkCF0wfAZRlblyWdliDLN4eHPxebId9zCOjr5b3+iDLV02ahbYcnIO+WGHbzpGbSnhPlGkECVJA==
X-Received: by 2002:a63:ff03:: with SMTP id k3mr22704545pgi.40.1566260305794; 
 Mon, 19 Aug 2019 17:18:25 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:17:42 -0700
In-Reply-To: <20190820001805.241928-1-matthewgarrett@google.com>
Message-Id: <20190820001805.241928-7-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190820001805.241928-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH V40 06/29] kexec_load: Disable at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_171827_974269_E796003F 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, Kees Cook <keescook@chromium.org>,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Matthew Garrett <mjg59@google.com>,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
 Dave Young <dyoung@redhat.com>
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
Reviewed-by: Kees Cook <keescook@chromium.org>
cc: kexec@lists.infradead.org
Signed-off-by: James Morris <jmorris@namei.org>
---
 include/linux/security.h     | 1 +
 kernel/kexec.c               | 8 ++++++++
 security/lockdown/lockdown.c | 1 +
 3 files changed, 10 insertions(+)

diff --git a/include/linux/security.h b/include/linux/security.h
index e5dd446ef35b..b607a8ac97fe 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -105,6 +105,7 @@ enum lockdown_reason {
 	LOCKDOWN_NONE,
 	LOCKDOWN_MODULE_SIGNATURE,
 	LOCKDOWN_DEV_MEM,
+	LOCKDOWN_KEXEC,
 	LOCKDOWN_INTEGRITY_MAX,
 	LOCKDOWN_CONFIDENTIALITY_MAX,
 };
diff --git a/kernel/kexec.c b/kernel/kexec.c
index 1b018f1a6e0d..bc933c0db9bf 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -205,6 +205,14 @@ static inline int kexec_load_check(unsigned long nr_segments,
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
index 240ecaa10a1d..aaf30ad351f9 100644
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
