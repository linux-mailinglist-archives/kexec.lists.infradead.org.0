Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D556F42CD
	for <lists+kexec@lfdr.de>; Fri,  8 Nov 2019 10:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UnupKb9ROu7PE6+JhQQW4MfNwsHTi1Wqrt/rqFrIDCY=; b=UsLHjbDugyMlMekv0dEMmzkd4y
	uMfnCSCtJPqBdJx/qYYs50SRqDqKrMGgyzYDqNqVmGOP/c3qEfBzIx19HU7kkxUArETf4o65InwuY
	tIX2ttd4abna212m7COKhxpTl+0jgi+W9GLwBeS1Dt2I1n/xc4tjwgzbipAMRxGdTl6t5EhUDEjxi
	LW2XLLenUn1+0GenVmsQZR6oDE+hXjZaR/txokvX8+gQ4KuBdw/yhghFavUfNWgmpq/09vw2HlMyH
	9kTdai6Cqr9pVI3rUIBR3aMQoREfklpvbfQehr/ZrceZeXtlNW6IEv738I/1/Cd8gTF1wzCNbGcwJ
	ljlNGyaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0A5-0005uS-1S; Fri, 08 Nov 2019 09:02:33 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT08q-0004nC-MO
 for kexec@lists.infradead.org; Fri, 08 Nov 2019 09:01:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573203675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rcMCl02DtgAodZc1y0NYd9at6CosXJepzGQl98OpFNI=;
 b=IZL4MLAJ5GIvf8LGB5qN4/ty5kssHyxchyOzabhkiec9O3NxHEsaaKmvWaGS/NlEvECbq3
 u7NuVqu4E7KFwRxUBw/MdKyxdR6eWX9XBFgjJfrvj/Q9/CaWPrN9nzL9qRCu/ls1hdIHm5
 CpUGzwwFvkV8iy6qfQSgf+jvnNnwNi0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-yCeEA3aXM7mippN68agMJw-1; Fri, 08 Nov 2019 04:01:10 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45FE0800054;
 Fri,  8 Nov 2019 09:01:08 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-112.pek2.redhat.com
 [10.72.12.112])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 68AA85D6A5;
 Fri,  8 Nov 2019 09:00:58 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/3 v9] kexec: Fix i386 build warnings that missed declaration
 of struct kimage
Date: Fri,  8 Nov 2019 17:00:27 +0800
Message-Id: <20191108090027.11082-4-lijiang@redhat.com>
In-Reply-To: <20191108090027.11082-1-lijiang@redhat.com>
References: <20191108090027.11082-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: yCeEA3aXM7mippN68agMJw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_010116_822474_95CF88B6 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com, d.hatayama@fujitsu.com,
 vgoyal@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Kbuild test robot reported some build warnings as follow:

arch/x86/include/asm/crash.h:5:32: warning: 'struct kimage' declared
inside parameter list will not be visible outside of this definition
or declaration
    int crash_load_segments(struct kimage *image);
                                   ^~~~~~
    int crash_copy_backup_region(struct kimage *image);
                                        ^~~~~~
    int crash_setup_memmap_entries(struct kimage *image,
                                          ^~~~~~
The 'struct kimage' is defined in the header file include/linux/kexec.h,
before using it, need to include its header file or make a declaration.
Otherwise the above warnings may be triggered.

Add a declaration of struct kimage to the file arch/x86/include/asm/
crash.h, that will solve these compile warnings.

Fixes: dd5f726076cc ("kexec: support for kexec on panic using new system call")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
Link: https://lkml.kernel.org/r/201910310233.EJRtTMWP%25lkp@intel.com
---
 arch/x86/include/asm/crash.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/include/asm/crash.h b/arch/x86/include/asm/crash.h
index 3dff55f4ed9d..88eadd08ad70 100644
--- a/arch/x86/include/asm/crash.h
+++ b/arch/x86/include/asm/crash.h
@@ -2,6 +2,8 @@
 #ifndef _ASM_X86_CRASH_H
 #define _ASM_X86_CRASH_H
 
+struct kimage;
+
 int crash_load_segments(struct kimage *image);
 int crash_copy_backup_region(struct kimage *image);
 int crash_setup_memmap_entries(struct kimage *image,
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
