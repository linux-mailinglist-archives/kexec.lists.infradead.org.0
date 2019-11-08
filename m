Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46459F42B3
	for <lists+kexec@lfdr.de>; Fri,  8 Nov 2019 10:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dFr+HM7Yhxk9ksnjMej3t4Td2PCjmaWGvjM6dp5N/C8=; b=Crx
	mTZeQZwlyUsWNpSkPGu36e1z+lbVzPlmqeBslU+OFwBwQ/04hCW26LyRXXaWM1yr2bzGRvFu6Bdk3
	pnlTUkfCxlb/nMcw/7jbC3CG+cIcW2goNvWb5QSIvw7qIxP9j4oiZ2P5rJUhra6UsTeZisrSD2PV6
	cEydVwaiuSj1hk9Wl9S2wYg/PRMNBJByp4FYPozhDBaLXFbm78ToDGGCIr52iV6K/X0zt0WK8HyKd
	9xZIJ4pbYIEFUyWNbZ9+uAGkTMrYmbZyARNkov1lBwmRrUnY+BY5+JEug0sq6n4qB2GBcHLqLxR/u
	rXOgUDAinMX1+2K+j823NvDP8tLVFZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT08V-0004Rr-JJ; Fri, 08 Nov 2019 09:00:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT08R-0004OB-NP
 for kexec@lists.infradead.org; Fri, 08 Nov 2019 09:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573203649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=R1cBLL262d5PbXD6F0/Q3yv5N9eCafn0HD776UEyAek=;
 b=SG91JlLCeADjMyj5cTm5UO32Fa4MbJcFWFSa/rfsD+cHI1cxegWgd8kIQsoUxdN0Xnvt3X
 pchBTqqR1TWN9jf8vKlgQVKEIPwG/iia1OmsXz6e8Tn5KXpDXNCBXDTsXwgfbnjWOCx57W
 lEDWwjazV4sLIeptRolU/39IQ4GBp6o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-uiASuWksMTKVsC_UFMqNDA-1; Fri, 08 Nov 2019 04:00:45 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ADB88477;
 Fri,  8 Nov 2019 09:00:43 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-112.pek2.redhat.com
 [10.72.12.112])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 94FFA5D6A5;
 Fri,  8 Nov 2019 09:00:32 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/3 v9] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
Date: Fri,  8 Nov 2019 17:00:24 +0800
Message-Id: <20191108090027.11082-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: uiASuWksMTKVsC_UFMqNDA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_010051_845700_971D5555 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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

In purgatory(), the main things are as below:

[1] verify sha256 hashes for various segments.
    Lets keep these codes, and do not touch the logic.

[2] copy the first 640k content to a backup region.
    Lets safely remove it and clean all code related to backup region.

This patch series will remove the backup region, because the current
handling of copying the first 640k runs into problems when SME is
active(https://bugzilla.kernel.org/show_bug.cgi?id=204793).

The low 1M region will always be reserved when the crashkernel kernel
command line option is specified. And this way makes it unnecessary to
do anything with the low 1M region, because the memory allocated later
won't fall into the low 1M area.

This series includes three patches:
[1] x86/kdump: always reserve the low 1M when the crashkernel option
    is specified
    The low 1M region will always be reserved when the crashkernel
    kernel command line option is specified, which ensures that the
    memory allocated later won't fall into the low 1M area.

[2] x86/kdump: clean up all the code related to the backup region
    Remove the backup region and clean up.

[3] kexec: Fix i386 build warnings that missed declaration of struct
    kimage

Changes since v1:
[1] Add extra checking condition: when the crashkernel option is
    specified, reserve the low 640k area.

Changes since v2:
[1] Reserve the low 1M region when the crashkernel option is only
    specified.(Suggested by Eric)

[2] Remove the unused crash_copy_backup_region()

[3] Remove the backup region and clean up

[4] Split them into three patches

Changes since v3:
[1] Improve the first patch's log

[2] Improve the third patch based on Eric's suggestions

Changes since v4:
[1] Correct some typos, and also improve the first patch's log

[2] Add a new function kexec_reserve_low_1MiB() in kernel/kexec_core.c
    and which is called by reserve_real_mode(). (Suggested by Boris)

Changes since v5:
[1] Call the cmdline_find_option() instead of strstr() to check the
    crashkernel option. (Suggested by Hatayama)

[2] Add a weak function kexec_reserve_low_1MiB() in kernel/kexec_core.c,
    and implement the kexec_reserve_low_1MiB() in arch/x86/kernel/
    machine_kexec_64.c so that it does not cause the compile error
    on non-x86 kernel, and also ensures that it can work well on x86
    kernel.

Changes since v6:
[1] Move the kexec_reserve_low_1MiB() to arch/x86/kernel/crash.c and
    also move its declaration function to arch/x86/include/asm/crash.h
    (Suggested by Dave Young)

[2] Adjust the corresponding header files.

Changes since v7:
[1] Change the function name from kexec_reserve_low_1MiB() to
    crash_reserve_low_1M().

[2] Fix some warnings reported by kduild.

Changes since v8:
[1] Fix some build warnings reported by kbuild and make it as a separate
    patch.

Lianbo Jiang (3):
  x86/kdump: always reserve the low 1M when the crashkernel option is
    specified
  x86/kdump: clean up all the code related to the backup region
  kexec: Fix i386 build warnings that missed declaration of struct
    kimage

 arch/x86/include/asm/crash.h       |   8 +++
 arch/x86/include/asm/kexec.h       |  10 ---
 arch/x86/include/asm/purgatory.h   |  10 ---
 arch/x86/kernel/crash.c            | 102 ++++++++---------------------
 arch/x86/kernel/machine_kexec_64.c |  47 -------------
 arch/x86/purgatory/purgatory.c     |  19 ------
 arch/x86/realmode/init.c           |   2 +
 7 files changed, 36 insertions(+), 162 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
