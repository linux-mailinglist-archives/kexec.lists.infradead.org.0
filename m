Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E211B975F
	for <lists+kexec@lfdr.de>; Mon, 27 Apr 2020 08:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l603D58RTf6EqHbg5+tpaLKDFRyHVkWYtWVJTniREHs=; b=Zo40kpH2jI431HDitamAYDYNAA
	YLDgEyFKvATptTUI0M5Tta5GITJPi/SAKwHCb7KQ8w4Mybd74mo1QuJW9WF52WdyxAaHu/6+oDr9C
	+ruEOj8NbQhfcON3i2GKcje4gG+DXcS1k+cHAx+7+dLyCUQGcjoCY1igP0kHrMSzQEYt+s01DLEJY
	AmC28i8hS0bEUOP+3z1rEX/xgpV9PxqDzpWSQXpguZoNrpfMJevM7wubyGp9LZ8UQNGx19X19WPuF
	iiNdjQC8njcmSdXLCyUc5LYgxxbpdf2zDljNzPDdnSXeTPKELDZW838lBl9J6tKVygTUyeJ0Bczy3
	ReUIcFow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxCr-00032Z-Oi; Mon, 27 Apr 2020 06:25:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxCi-0002wn-5R; Mon, 27 Apr 2020 06:25:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 231001063;
 Sun, 26 Apr 2020 23:25:19 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D85A13F73D;
 Sun, 26 Apr 2020 23:25:15 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] Documentation/vmcoreinfo: Add documentation for
 'KERNELPACMASK'
Date: Mon, 27 Apr 2020 11:55:02 +0530
Message-Id: <1587968702-19996-2-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
References: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_232521_700378_94AFB276 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Baoquan He <bhe@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Dave Young <dyoung@redhat.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add documentation for KERNELPACMASK variable being added to the vmcoreinfo.

It indicates the PAC bits mask information of signed kernel pointers if
Armv8.3-A Pointer Authentication feature is present.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Dave Young <dyoung@redhat.com>
Cc: Baoquan He <bhe@redhat.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 Documentation/admin-guide/kdump/vmcoreinfo.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
index 007a6b8..5cc3ee6 100644
--- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
+++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
@@ -393,6 +393,12 @@ KERNELOFFSET
 The kernel randomization offset. Used to compute the page offset. If
 KASLR is disabled, this value is zero.
 
+KERNELPACMASK
+-------------
+
+Indicates the PAC bits mask information if Pointer Authentication is
+enabled and address authentication feature is present.
+
 arm
 ===
 
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
