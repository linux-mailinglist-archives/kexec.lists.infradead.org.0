Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D349AEAD
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 14:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8K82LtSrkUJn9dG1Ps2wt7qTJQ8JiTxs6Vkt+eb4Bs4=; b=LxZ
	Ox81hGI+WANxN5uc55kYCdCHhbYY4gPurQ0f+3SQHzZKJl7Tykl7yhojtcf3S22PSvAP65HVJm5qr
	nwK3rVHUP2r444ksKja2gu/7SWUGuXeW5eMcZXih9RXZjsmhYvac4VD6u1UVUWT/av35m2sVy4Ia1
	6lBvtvhYx4Lr+2D7KT850yP33hP5v7k1WrjBIYN4cLq6b1aghRi6qH/jw9/5pRvAsFFjenBQWLnvk
	ehTLGLxjQEDpYUgZHR5OnLnkzw+bqjyIN/tIGTGCjMrFX0AQDcYCawjAt14kZlmT67O9BDF//1p9/
	Ba1TC1X8zlLk1/PAu+rsYG7vzVMTZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18KM-0007i5-0a; Fri, 23 Aug 2019 12:05:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18KI-0007hd-Tl
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 12:05:56 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CC0B983F3C;
 Fri, 23 Aug 2019 12:05:53 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-117.pek2.redhat.com
 [10.72.12.117])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 34E3A61785;
 Fri, 23 Aug 2019 12:05:44 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 0/4 v2] Limit the size of vmcore-dmesg.txt to 2G
Date: Fri, 23 Aug 2019 20:05:35 +0800
Message-Id: <20190823120539.18330-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Fri, 23 Aug 2019 12:05:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_050554_975241_C7961761 
X-CRM114-Status: GOOD (  12.00  )
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

[PATCH 1/4] Cleanup: remove the read_elf_kcore()
Here, no need to wrap the read_elf() again, lets invoke it directly.
So remove the read_elf_kcore() and clean up redundant code.

[PATCH 2/4] Fix an error definition about the variable 'fname'
The variable 'fname' is mistakenly defined two twice, the first definition
is in the vmcore-dmesg.c, and the second definition is in the elf_info.c.
That is confused and incorrect although it's a static type, because the
value of variable 'fname' is not assigned(set) in elf_info.c. Anyway, its
value will be always 'null' when printing an error information.

[PATCH 3/4] Cleanup: move it back from util_lib/elf_info.c
Some code related to vmcore-dmesg.c is put into the util_lib, which
is not very reasonable, so lets move it back and tidy up those code.
In addition, that will also help to limit the size of vmcore-dmesg.txt.

[PATCH 4/4] Limit the size of vmcore-dmesg.txt to 2G
With some corrupted vmcore files, the vmcore-dmesg.txt file may
grow forever till the kdump disk becomes full. Lets limit the
size of vmcore-dmesg.txt to avoid such problems.

BTW: I tested this patch series on x86 64 and arm64, it also worked well.

Changes since v1:
[1] split them([patch 1/4] and [patch 2/4]) into a separate patch.
[2] remove a typedef definition for handler.
[3] remove some changes of variable 'fname' and fix its error.

Lianbo Jiang (4):
  Cleanup: remove the read_elf_kcore()
  Fix an error definition about the variable 'fname'
  Cleanup: move it back from util_lib/elf_info.c
  Limit the size of vmcore-dmesg.txt to 2G

 kexec/arch/arm64/kexec-arm64.c |  2 +-
 util_lib/elf_info.c            | 65 ++++++++--------------------------
 util_lib/include/elf_info.h    |  4 +--
 vmcore-dmesg/vmcore-dmesg.c    | 42 ++++++++++++++++++++--
 4 files changed, 57 insertions(+), 56 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
