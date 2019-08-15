Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056438E339
	for <lists+kexec@lfdr.de>; Thu, 15 Aug 2019 05:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A1R5CNr3f6MVJSWB/Lc/RkgDOpRwLsi6JpVpctoZvnM=; b=RL5
	kB4wdL2Kthsqohpr+isw30mO07zvsnwSSMQAJslpvpPFlr9N1GtS2NUTG2YmWm/EZPk354MOXZ3ns
	7UtJwoHkFB/ZaN+E0MLtGRb9HZOJgSRzg4bqsGRMAVVyVMcT/raL3caIBPHPzTp8GyA+yYMxwqcgJ
	bZp/hUpI3o2vUWR5hJtDVBqSx1JLHjW+YpNC20JYrGV1WZInmTc8OCp+CapczhPcPyuOgKRkJuOyD
	YJND17hdlDTRR3JJf+YqGCIEhoL1RTHXQGrMpoPSN7ykDnL+L+shQpKkDAEtXyA7M6C3XYyjEGqqd
	Pqu+OttE4UiNPoCUKOymH0+SG21kSeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy6ac-0004ed-Dc; Thu, 15 Aug 2019 03:38:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy6aY-0004eK-Pp
 for kexec@lists.infradead.org; Thu, 15 Aug 2019 03:38:12 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B289066C41;
 Thu, 15 Aug 2019 03:38:09 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-36.pek2.redhat.com
 [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8AEEA95A41;
 Thu, 15 Aug 2019 03:38:03 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 0/2] Limit the size of vmcore-dmesg.txt to 2G
Date: Thu, 15 Aug 2019 11:37:54 +0800
Message-Id: <20190815033756.15587-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 15 Aug 2019 03:38:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_203810_852797_F4A81D66 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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
Cc: kasong@redhat.com, bhe@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 junw99@yahoo.com, horms@verge.net.au, dyoung@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

[PATCH 1/2] cleanup: move it back from util_lib/elf_info.c
Some code related to vmcore-dmesg.c is put into the util_lib, which
is not very reasonable, so lets move it back and tidy up those code.
    
In addition, that will also help to limit the size of vmcore-dmesg.txt.

[PATCH 2/2] Limit the size of vmcore-dmesg.txt to 2G
With some corrupted vmcore files, the vmcore-dmesg.txt file may
grow forever till the kdump disk becomes full. Lets limit the
size of vmcore-dmesg.txt to avoid such problems.

BTW: I tested this patch on x86 64 and arm64, it also worked well.

Lianbo Jiang (2):
  cleanup: move it back from util_lib/elf_info.c
  Limit the size of vmcore-dmesg.txt to 2G

 kexec/arch/arm64/kexec-arm64.c |  2 +-
 util_lib/elf_info.c            | 73 ++++++++--------------------------
 util_lib/include/elf_info.h    |  8 +++-
 vmcore-dmesg/vmcore-dmesg.c    | 54 ++++++++++++++++++++++---
 4 files changed, 71 insertions(+), 66 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
