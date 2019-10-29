Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52144E7E6E
	for <lists+kexec@lfdr.de>; Tue, 29 Oct 2019 03:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8BARHdVJNgP/qI71A5AKmW4/BItkJBR43oM0+x9z28Q=; b=kwR
	5e+tXbusAZUs9NkKQS3qOCZFW1EZeeGew+IV5bbauHcOy/SLu5TrvTAwGSWS2kiZDJdMrveGyTmp6
	Qfg5uGCVb59OdjIHgIcovsyoqi9VxxZxeNduFIOj1BDwBWTJuvB++dJGdu3n7OOP6rySEk55+AaZX
	24f4jPo0UYNcIgX89bgFdw09auixkjv/jNGdYq3Fk9SQ4TctXe9pKQeYsT7aYztnCjzsMVMaV18CM
	+Xyf45KEf6hhlRGIqN+yoU7Jj8dCCpSyVrR8q961I7IfSohw5ZlfxDTV94wTCxMyeN6xCnoc2fssH
	LyZX0Kxv6qGqDBz4mnkXeFmnFpEcguQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPGym-0002us-9r; Tue, 29 Oct 2019 02:11:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPGyi-0002tx-94
 for kexec@lists.infradead.org; Tue, 29 Oct 2019 02:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572315082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=dxTh2aeqRz/SGJhGd2rcrJamUtecUG5SfHtNNQiPowQ=;
 b=Y+v5+bk6YwtI2mpkP5oyPc9wsbwiSQZBXw+MbPHb1gJUXMNBQ/+sdnqOMxagh7Spw65azf
 bErDWsT3kcs3Mg1X4LXnInzUJxfO42votSbM7tzdFU9sk1zzdJHwEVmqH+6WuQylDHLs5e
 TZ0hG5PiKUKKkFY8g4vnSSygheXI0iY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-3v9Rw4OyMQKzV50YZkpVqw-1; Mon, 28 Oct 2019 22:11:19 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 682FB2B6;
 Tue, 29 Oct 2019 02:11:17 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-41.pek2.redhat.com
 [10.72.12.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 631911001B28;
 Tue, 29 Oct 2019 02:11:04 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2 v7] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
Date: Tue, 29 Oct 2019 10:10:57 +0800
Message-Id: <20191029021059.22070-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: 3v9Rw4OyMQKzV50YZkpVqw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_191124_402481_34B7944F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Lianbo Jiang (2):
  x86/kdump: always reserve the low 1MiB when the crashkernel option is
    specified
  x86/kdump: clean up all the code related to the backup region

 arch/x86/include/asm/crash.h       |   6 ++
 arch/x86/include/asm/kexec.h       |  10 ---
 arch/x86/include/asm/purgatory.h   |  10 ---
 arch/x86/kernel/crash.c            | 102 ++++++++---------------------
 arch/x86/kernel/machine_kexec_64.c |  47 -------------
 arch/x86/purgatory/purgatory.c     |  19 ------
 arch/x86/realmode/init.c           |   2 +
 7 files changed, 34 insertions(+), 162 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
