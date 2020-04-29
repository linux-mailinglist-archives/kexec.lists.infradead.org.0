Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D8C1BE9EE
	for <lists+kexec@lfdr.de>; Wed, 29 Apr 2020 23:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uuvSGryAGOpvuXOcb3Iq9ckBH27FuQST3jh09KgCDuU=; b=FngSBEJu0Jc3/S
	ZFhimEm2HdikIxu+E08zDbyP2EcuhO4GkQCJ4qe0+aupEpFcgt0HfZnDtp809sIaygptpiciPvQiP
	ro9JAumQbw7D9ccTVP8JNoXLibV8bhHmh0c0EGERDlHcRQlM7lyZ7LG+37Cw4blGBzGgtJdt/3O3Z
	211AUP8I6d0eExrS6eCcrPxM298rCdtu1b5orc1iCSn07EQ9DHMDLyM35FAQ6+oGJcCKXh/CwNvp6
	A30hF9afFnxJI8lEyHwxmSgvzDF4ES88hsZOXvjQFeqy5emb/FBMBYsS6gIEGPQGq4kpOU+KzlYPV
	Nsl6LYIDsEE7kEcK5G5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuKY-0003Am-N5; Wed, 29 Apr 2020 21:33:22 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuKW-00039l-8y
 for kexec@lists.infradead.org; Wed, 29 Apr 2020 21:33:21 +0000
Received: from p50875c11.dip0.t-ipconnect.de ([80.135.92.17]
 helo=vostro.fn.ogness.net)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jTuKQ-0001c8-6Z; Wed, 29 Apr 2020 23:33:14 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Subject: [RFC PATCH 0/1] support lockless printk ringbuffer
Date: Wed, 29 Apr 2020 23:32:55 +0200
Message-Id: <20200429213256.3691-1-john.ogness@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_143320_456711_06F238A5 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kexec@lists.infradead.org, Dave Anderson <anderson@redhat.com>,
 crash-utility@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kazu,

Here is a patch adding full support for the new lockless printk
ringbuffer as it is currently being proposed. Note that the latest
version has not yet been submitted to LKML. I was waiting until I
finished tests with crash(8) and makedumpfile(8).

The new ringbuffer will export all the necessary symbols, sizes,
and offsets in VMCOREINFO.

Note that I created a separate printk.c for the iteration logic.

Also note that I modified dwarf_info.c to support resolving
typedefs of typedefs. This was necessary in order to support
atomic_long_t and its "counter" member.

I don't expect you to take the patch as-is, but I hope it can
provide some positive ground work for moving forward.

John Ogness (1):
  printk: add support for lockless ringbuffer

 Makefile       |   2 +-
 dwarf_info.c   |  36 +++++++++-
 makedumpfile.c | 101 ++++++++++++++++++++++++++--
 makedumpfile.h |  25 +++++++
 printk.c       | 177 +++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 333 insertions(+), 8 deletions(-)
 create mode 100644 printk.c

-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
