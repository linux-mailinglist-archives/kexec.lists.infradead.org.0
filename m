Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E541EB4CA
	for <lists+kexec@lfdr.de>; Tue,  2 Jun 2020 07:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qYiU/CidSmFogcEQaqw0W3jkXDTnrjE57ehB3j9OEPI=; b=WEJ
	uyqvjZk385XYpeM7AlIevw3hRRM9I6PvmtckmswRK8rGro9qM0/JvOWbcgLCG+14fMu2eNOemJhHp
	pGX25ZybQhUde5+D3Qxuuh8P7rwgvMwoDtNhcVPEYYUn+jj/QLeVida0yJBy83smwwj9rfnWb/S1s
	tj1A5uC8UQFgosp84TIB/bwo/UTRI8crUTc13mNCPRMuisQaLZYeClNLvR6g/90oEr4iobBM1vw9f
	CdOXJooag9y6IPE7rVHQrx+yiv1hUtposOJ2Xt2q2S1ugDjVqOUSvx18o6A7JXKuqtXkdIx8Hvjxs
	N3pj4wiGyMti+/rNfsRjafKsVTpoxog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfz2H-0005sd-LR; Tue, 02 Jun 2020 05:00:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfz2D-0005qx-Ma
 for kexec@lists.infradead.org; Tue, 02 Jun 2020 05:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591074015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=n9PkjNEQqqTWuaN+CVoilTQvSdVudQk6CXvQLcnvEcI=;
 b=bMtFzehHvEBYc8Hlpxt7jz5FyL4XBzrcDZHwqmNj3GzMDpH4KFIDDJ3CLrEnk2WvcI7Kfo
 1x1Qbw8AxMRhoTvqF1dzLRneotYj4EabfAuAS0qrra7RkvrJwuQ1ZwAnRZJfz3RqmPFl/f
 943qBsSSyf9y5fMq0UpbXl4WcpTLHng=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-bH8aMhohMw6LmvpSZYUiIQ-1; Tue, 02 Jun 2020 01:00:11 -0400
X-MC-Unique: bH8aMhohMw6LmvpSZYUiIQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 734E5107ACF5;
 Tue,  2 Jun 2020 05:00:09 +0000 (UTC)
Received: from unused.redhat.com (ovpn-12-206.pek2.redhat.com [10.72.12.206])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ABF867B918;
 Tue,  2 Jun 2020 04:59:54 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] kexec: Do not verify the signature without the lockdown or
 mandatory signature
Date: Tue,  2 Jun 2020 12:59:52 +0800
Message-Id: <20200602045952.27487-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_220021_811487_64696B1A 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jbohac@suse.cz, bhe@redhat.com, kexec@lists.infradead.org,
 jmorris@namei.org, mjg59@google.com, ebiederm@xmission.com,
 akpm@linux-foundation.org, dyoung@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Signature verification is an important security feature, to protect
system from being attacked with a kernel of unknown origin. Kexec
rebooting is a way to replace the running kernel, hence need be
secured carefully.

In the current code of handling signature verification of kexec kernel,
the logic is very twisted. It mixes signature verification, IMA signature
appraising and kexec lockdown.

If there is no KEXEC_SIG_FORCE, kexec kernel image doesn't have one of
signature, the supported crypto, and key, we don't think this is wrong,
Unless kexec lockdown is executed. IMA is considered as another kind of
signature appraising method.

If kexec kernel image has signature/crypto/key, it has to go through the
signature verification and pass. Otherwise it's seen as verification
failure, and won't be loaded.

Seems kexec kernel image with an unqualified signature is even worse than
those w/o signature at all, this sounds very unreasonable. E.g. If people
get a unsigned kernel to load, or a kernel signed with expired key, which
one is more dangerous?

So, here, let's simplify the logic to improve code readability. If the
KEXEC_SIG_FORCE enabled or kexec lockdown enabled, signature verification
is mandated. Otherwise, we lift the bar for any kernel image.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
Changes since v1:
[1] Modify the log level(suggested by Jiri Bohac)

 kernel/kexec_file.c | 34 ++++++----------------------------
 1 file changed, 6 insertions(+), 28 deletions(-)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index faa74d5f6941..fae496958a68 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -181,34 +181,19 @@ void kimage_file_post_load_cleanup(struct kimage *image)
 static int
 kimage_validate_signature(struct kimage *image)
 {
-	const char *reason;
 	int ret;
 
 	ret = arch_kexec_kernel_verify_sig(image, image->kernel_buf,
 					   image->kernel_buf_len);
-	switch (ret) {
-	case 0:
-		break;
+	if (ret) {
 
-		/* Certain verification errors are non-fatal if we're not
-		 * checking errors, provided we aren't mandating that there
-		 * must be a valid signature.
-		 */
-	case -ENODATA:
-		reason = "kexec of unsigned image";
-		goto decide;
-	case -ENOPKG:
-		reason = "kexec of image with unsupported crypto";
-		goto decide;
-	case -ENOKEY:
-		reason = "kexec of image with unavailable key";
-	decide:
 		if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE)) {
-			pr_notice("%s rejected\n", reason);
+			pr_notice("Enforced kernel signature verification failed (%d).\n", ret);
 			return ret;
 		}
 
-		/* If IMA is guaranteed to appraise a signature on the kexec
+		/*
+		 * If IMA is guaranteed to appraise a signature on the kexec
 		 * image, permit it even if the kernel is otherwise locked
 		 * down.
 		 */
@@ -216,17 +201,10 @@ kimage_validate_signature(struct kimage *image)
 		    security_locked_down(LOCKDOWN_KEXEC))
 			return -EPERM;
 
-		return 0;
-
-		/* All other errors are fatal, including nomem, unparseable
-		 * signatures and signature check failures - even if signatures
-		 * aren't required.
-		 */
-	default:
-		pr_notice("kernel signature verification failed (%d).\n", ret);
+		pr_debug("kernel signature verification failed (%d).\n", ret);
 	}
 
-	return ret;
+	return 0;
 }
 #endif
 
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
