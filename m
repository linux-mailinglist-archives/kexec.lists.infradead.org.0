Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E14E1DF1
	for <lists+kexec@lfdr.de>; Wed, 23 Oct 2019 16:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JnbvOkOE/nGpYxXWlKnjlht2w9ZgSZAnhPxuE3c4yZc=; b=K2j
	uelKAVIhdTwaT1bl+qm2JK9D13Fbih2Df5EPAG1ME6LMVRRswe+5KFx+nJVonzCJUbC0h3bqJIYj+
	VwAV/G7YDyCa/UFAfr6B8sg3hGm1DEw67V3NqWuI7J4lLhPQNxCtXMrLLeaU4lL/wp0dMKyxOxhKD
	CwhFdBhg/6X0VqRjL4Oc2xc1gRav5nCMgb6bu6M+7vYwmQ5kMD1B6Foag1T394pOArq+V28fRM8NB
	B6bpoUwv6vtajMEao/z/wceL+WNmsOteFYEFu6/tnJ/O8CvRkZkjeXnwCtUj1V+eUgH8NCtkpmGd6
	/EnjJGOXN/3uITSdoQpgZ93WCM/xyDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHUK-0002uW-Fi; Wed, 23 Oct 2019 14:19:48 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHUG-0002tg-SR
 for kexec@lists.infradead.org; Wed, 23 Oct 2019 14:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571840381;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=b5XwPGWfRLOQx/XL/lGD6w9DJuiaWtEwmYD7upyMG5M=;
 b=hZP3VRnSAwhgxMPmNeIFTQpSt8hfelO5HCTtH5KRc8AXA5e9GVksB2SMgXiONKqcZFsIl+
 2eGzQKfHOGqSxjKtv7sf4mp9aGYCyC+h56XKfs+QY2kmSOxqZUJvOKY7cqw+VhhDdzcJPJ
 /avj4c3Y+3Na6fgzg+1gimkGrXRFuo8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-vDLmOuu8Pauaq5KU5RV9Dw-1; Wed, 23 Oct 2019 10:19:37 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A85780183D;
 Wed, 23 Oct 2019 14:19:36 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-33.pek2.redhat.com
 [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 24C635C241;
 Wed, 23 Oct 2019 14:19:19 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2 v5] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
Date: Wed, 23 Oct 2019 22:19:10 +0800
Message-Id: <20191023141912.29110-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: vDLmOuu8Pauaq5KU5RV9Dw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_071944_997050_51B8D00F 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
active(https://bugzilla.kernel.org/show_bug.cgi?id=204793).

The low 1MiB region will always be reserved when the crashkernel kernel
command line option is specified. And this way makes it unnecessary to
do anything with the low 1MiB region, because the memory allocated later
won't fall into the low 1MiB area.

This series includes two patches:
[1] x86/kdump: always reserve the low 1MiB when the crashkernel option
    is specified
    The low 1MiB region will always be reserved when the crashkernel
    kernel command line option is specified, which ensures that the
    memory allocated later won't fall into the low 1MiB area.

[2] x86/kdump: clean up all the code related to the backup region
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

Changes since v3:
[1] Improve the first patch's log

[2] Improve the third patch based on Eric's suggestions

Changes since v4:
[1] Correct some typos, and also improve the first patch's log

[2] Add a new function kexec_reserve_low_1MiB() in kernel/kexec_core.c
    and which is called by reserve_real_mode(). (Suggested by Boris) 

Lianbo Jiang (2):
  x86/kdump: always reserve the low 1MiB when the crashkernel option is
    specified
  x86/kdump: clean up all the code related to the backup region

 arch/x86/include/asm/kexec.h       | 10 ----
 arch/x86/include/asm/purgatory.h   | 10 ----
 arch/x86/kernel/crash.c            | 87 ++++--------------------------
 arch/x86/kernel/machine_kexec_64.c | 47 ----------------
 arch/x86/purgatory/purgatory.c     | 19 -------
 arch/x86/realmode/init.c           |  2 +
 include/linux/kexec.h              |  2 +
 kernel/kexec_core.c                | 13 +++++
 8 files changed, 28 insertions(+), 162 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
