Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED37D4C17
	for <lists+kexec@lfdr.de>; Sat, 12 Oct 2019 04:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6OCF/RKkrkhd3GIVqBvqx0ZS0CfR40HEkz3fCufsNl8=; b=HbJ
	m8vQYHe8MKxRt1hXhxdNYWAVNrUkoMFsbgxRDH3ZWF3dAoQ0WC3RfvozPEWh47sjHuyQuKaH8Q3ma
	5N4u3gzDuLa/1sieiM4xGBtz2v9jqOXrF3uVLRxVJRr5EGImlVn8jAyBIBqQ4vnH8qf4nkoheJijC
	P/QB+VmO6okM3d8c4aXp+tpZldOrxRRfsNmHEFuiVhJ2z9OlOEqb+uXeS+1OiuX3kSAY9iOEiPqnP
	PSP0p+62vToVlttpCQ2N+gtWibFnLtM9kFPFaJGh03jcLY055NAKnjF1y6kjHnLW1Xj1/63N3E04i
	9e1kJexeuiIsteNA4MPUuIzFFuWE1wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ72i-0007b4-8w; Sat, 12 Oct 2019 02:22:04 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ72b-0007aK-KM
 for kexec@lists.infradead.org; Sat, 12 Oct 2019 02:21:59 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4CBF110C0930;
 Sat, 12 Oct 2019 02:21:56 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-50.pek2.redhat.com
 [10.72.12.50])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8115710018F8;
 Sat, 12 Oct 2019 02:21:45 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/3 v3] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
Date: Sat, 12 Oct 2019 10:21:37 +0800
Message-Id: <20191012022140.19003-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Sat, 12 Oct 2019 02:21:56 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_192157_685355_754C04C7 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, dhowells@redhat.com, mingo@redhat.com, bp@alien8.de,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
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
active.

The low 1MiB region will always be reserved when the crashkernel kernel
command line option is specified. And this way makes it unnecessary to
do anything with the low 1MiB region, because the memory allocated later
won't fall into the low 1MiB area.

This series includes three patches:
[1] Fix 'kmem -s' reported an invalid freepointer when SME was active
    The low 1MiB region will always be reserved when the crashkernel
    kernel command line option is specified, which ensures that the
    memory allocated later won't fall into the low 1MiB area.
    
[2] x86/kdump cleanup: remove the unused crash_copy_backup_region()
    The crash_copy_backup_region() has never been used, so clean
    up the redundant code.

[3] x86/kdump: clean up all the code related to the backup region
    Remove the backup region and clean up.

Changes since v1:
[1] Add extra checking condition: when the crashkernel option is
    specified, reserve the low 640k area.

Changes since v2:
[1] Reserve the low 1MiB region when the crashkernel option is only
    specified.(Suggested by Eric)

[2] Remove the unused crash_copy_backup_region()

[3] Remove the backup region and clean up

[4] Split them into three patches

Lianbo Jiang (3):
  x86/kdump: Fix 'kmem -s' reported an invalid freepointer when SME was
    active
  x86/kdump cleanup: remove the unused crash_copy_backup_region()
  x86/kdump: clean up all the code related to the backup region

 arch/x86/include/asm/crash.h       |  1 -
 arch/x86/include/asm/kexec.h       | 10 ----
 arch/x86/include/asm/purgatory.h   | 10 ----
 arch/x86/kernel/crash.c            | 91 ++++++------------------------
 arch/x86/kernel/machine_kexec_64.c | 47 ---------------
 arch/x86/purgatory/purgatory.c     | 19 -------
 arch/x86/realmode/init.c           | 11 ++++
 7 files changed, 27 insertions(+), 162 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
