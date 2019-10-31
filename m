Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE69EA9AE
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 04:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5L7DJubtZmL7vzVWaFlC6RfgjPl06xv7kRBb5n4M3FY=; b=r6N
	aXZ0lSzmLPksUCBAp0WbHy/n/dm5bgnDc6Ap+DZNFCWG8bfPgCoKVIZEAMgfSuPyGakVLfbsHeuk9
	A0i73BqZKxrEer8TOcwKx6+AmfR5uyffI1Nnz+sN+KISwYubDE1mjaBxVlx4zI4SDv6kGohGScrWJ
	eDcztMITr1xU6G8QreqShS3Tymdo34xdBLNMOtc9H+NgshahjN+Zy/W1lYVyopviAeAsgl1hUy/DC
	quU4xBTuWAFf2q8ahMvV7+7sjTY9Sg3+jOmPKoB1UiFSUlmGFog3BSvGEBIrTuEN+S5A1vJZN+XgF
	Tdkk3u3AeKmaut8ChRZQzFeaOxG+DUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ1FY-0003Bu-OU; Thu, 31 Oct 2019 03:35:52 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ1FV-0003Au-4Y
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 03:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572492945;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jK74Oxlnm2iBnkdV68ehFY5CMziAHJqAXXBp9ZtwyWI=;
 b=i+/YH+DyrS7KMxVhqJXd+2RTXO+Ic7odwd8/lqthBOnAThxVqA23kyMQSxCc5mbOqwwrsT
 WvBe8HWaiMugX72budOpXKr1OFmzCYKZxdCTdKUmvBGvZyH8CmtUDCMHsmbQy8nIPgRcxU
 42QZ3cHV2wbIEjRgV+AOvpXvJxQbeiU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-7oi4EHyqMRGesRh9v2vZdw-1; Wed, 30 Oct 2019 23:35:41 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1FB71005500;
 Thu, 31 Oct 2019 03:35:39 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-31.pek2.redhat.com
 [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CAF745C1BB;
 Thu, 31 Oct 2019 03:35:26 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2 RESEND v8] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
Date: Thu, 31 Oct 2019 11:35:15 +0800
Message-Id: <20191031033517.11282-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 7oi4EHyqMRGesRh9v2vZdw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_203549_305562_403357F4 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This series includes two patches:
[1] x86/kdump: always reserve the low 1M when the crashkernel option
    is specified
    The low 1M region will always be reserved when the crashkernel
    kernel command line option is specified, which ensures that the
    memory allocated later won't fall into the low 1M area.

[2] x86/kdump: clean up all the code related to the backup region
    Remove the backup region and clean up.

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

Lianbo Jiang (2):
  x86/kdump: always reserve the low 1M when the crashkernel option is
    specified
  x86/kdump: clean up all the code related to the backup region

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
