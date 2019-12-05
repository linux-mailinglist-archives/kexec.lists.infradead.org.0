Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438941141ED
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 14:49:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoKM3iChYrBGmpWWmlM7rLwXHLexKTq0pVnXI64YvN8=; b=FnLk5rjeOVMWq+
	+3MDV5sW4cx0hlFxTWi0U1aZTgkwXarxroPuzGpiZhd0cdZaftA1dEDzlk+xRP4HUE574P7UFTa2r
	zT+ECCwGAs5bYbYtM8pF9sOJbhRrOVnR7Egf3BSto62o/8NkAe5RyR7X3Zz69m7o8qomKFtLRpWeX
	w0QcLVQANfypQU93vRoxcQDkr7PXT5JdeOH7D39N2HaKOSZeK0LFNfruikOD77ANrZg4wMIQ37o57
	TtQjaEyOBtEWL/0N3JqnzaBYEIUfAIOj+i/jiwBGPcXnHXVSYV6ebwo1c01ER/V4InxFTAmhl/EZw
	20jn/5zwalUzhxm02NmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrVO-0004Lm-Jb; Thu, 05 Dec 2019 13:49:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrVC-0004EI-Eg
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 13:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575553743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LvnCHUl5lhFek9Nf47pDiu/dj5YoIgTQQRyypsYUfdk=;
 b=ipVx7H1yo1lhsAMjpWU10USwlx3PcZnnogyUvFVeGvXy8YlySh57t0tpuZzc7VPUPwIsvy
 Ipun3O4M3ZjOcD4vrDfDbG7ix1zUS9kKJmaqERwf8WNuJuyP43FAZI2JDP0puKHoIl6hIs
 wFDK+3SYyNY0A/LmLb5A0xqFmxG4jKA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-128-TQmWTNCmMG6DcItQWk2nFw-1; Thu, 05 Dec 2019 08:46:57 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC095800599;
 Thu,  5 Dec 2019 13:46:54 +0000 (UTC)
Received: from prarit.bos.redhat.com (prarit-guest.7a2m.lab.eng.bos.redhat.com
 [10.16.222.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF1A95DA75;
 Thu,  5 Dec 2019 13:46:52 +0000 (UTC)
From: Prarit Bhargava <prarit@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v5 0/3] printk: new ringbuffer implementation
Date: Thu,  5 Dec 2019 08:46:52 -0500
Message-Id: <20191205134652.12631-1-prarit@redhat.com>
In-Reply-To: <20191128015235.12940-1-john.ogness@linutronix.de>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: TQmWTNCmMG6DcItQWk2nFw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_054906_609108_93C206BD 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: andrea.parri@amarulasolutions.com, pmladek@suse.com,
 sergey.senozhatsky.work@gmail.com, john.ogness@linutronix.de,
 peterz@infradead.org, gregkh@linuxfoundation.org, brendanhiggins@google.com,
 rostedt@goodmis.org, sergey.senozhatsky@gmail.com, tglx@linutronix.de,
 torvalds@linux-foundation.org, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

  John Ogness <john.ogness@linutronix.de> wrote:
> Hello,
> 
> This is a follow-up RFC on the work to re-implement much of the
> core of printk. The threads for the previous RFC versions are
> here[0][1][2][3].
> 
> This RFC includes only the ringbuffer and a test module. This is
> a rewrite of the proposed ringbuffer, now based on the proof of
> concept[4] from Petr Mladek as agreed at the meeting[5] during
> LPC2019 in Lisbon.
> 
> The internal structure has been reworked such that the printk
> strings are in their own array, each separated by a 32-bit
> integer.
> 
> A 2nd array contains the dictionary strings (also with each
> separated by a 32-bit integer).
> 
> A 3rd array is made up of descriptors that contain all the
> meta-data for each printk record (sequence number, timestamp,
> loglevel, caller, etc.) as well as pointers into the other data
> arrays for the text and dictionary data.
> 
> The writer interface is somewhat similar to v4, but the reader
> interface has changed significantly. Rather than using an
> iterator object, readers just specify the sequence number they
> want to read. In effect, the sequence number acts as the
> iterator.
> 
> I have been communicating with Petr the last couple months to
> make sure this implementation fits his expectations. This RFC is
> mainly to get some feedback from anyone else that may see
> something that Petr and I have missed.
> 
> This series also includes my test module. On a 16-core ARM64
> test machine, the module runs without any errors. I am seeing
> the 15 writing cores each writing about 34500 records per
> second, while the 1 reading core misses only about 15% of the
> total records.
> 

John,

Based on the comments there is going to be a v6 but in any case I am
starting testing of this patchset on several large core systems across
multiple architectures (x86_64, ARM64, s390, ppc64le).  Some of those
systems are known to fail boot due to the large amount of printk output so
it will be good to see if these changes resolve those issues.

Sorry for the delay and I'll report back in a few days.

P.

> John Ogness
> 
> [0] https://lkml.kernel.org/r/20190212143003.48446-1-john.ogness@linutronix.de
> [1] https://lkml.kernel.org/r/20190607162349.18199-1-john.ogness@linutronix.de
> [2] https://lkml.kernel.org/r/20190727013333.11260-1-john.ogness@linutronix.de
> [3] https://lkml.kernel.org/r/20190807222634.1723-1-john.ogness@linutronix.de
> [4] https://lkml.kernel.org/r/20190704103321.10022-1-pmladek@suse.com
> [5] https://lkml.kernel.org/r/87k1acz5rx.fsf@linutronix.de
> 
> John Ogness (3):
>   printk-rb: new printk ringbuffer implementation (writer)
>   printk-rb: new printk ringbuffer implementation (reader)
>   printk-rb: add test module
> 
>  kernel/printk/Makefile            |   3 +
>  kernel/printk/printk_ringbuffer.c | 910 ++++++++++++++++++++++++++++++
>  kernel/printk/printk_ringbuffer.h | 249 ++++++++
>  kernel/printk/test_prb.c          | 347 ++++++++++++
>  4 files changed, 1509 insertions(+)
>  create mode 100644 kernel/printk/printk_ringbuffer.c
>  create mode 100644 kernel/printk/printk_ringbuffer.h
>  create mode 100644 kernel/printk/test_prb.c
> 
> -- 
> 2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
