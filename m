Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0575115281
	for <lists+kexec@lfdr.de>; Fri,  6 Dec 2019 15:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhuw+J2RF4ZncjF3+IS+fVftQJVBawbqXpbitBQzqEA=; b=T8vHiRmRWNJQIn
	aceDkkw5z8UWPet1V6z9lH3i6ui1org2MybNrdnKrfKEfhoUb2Fa7ydf9+F/838HYdQCojWbTbOZ9
	5JcVIVZkmmgGvg9vX69/+P9mODAUCAfKM4MnXrFG2WbfV8GiRjzLD5eyGR65HyBdNbKJd7itLZB1w
	SOk6X0z4jZC0VXDAwKANqNNA+Lli89scdXMP+PwKrWo3Z+rWTldpGvjddKSWkTN5Q39yHhiy/FBUC
	oGg8lOKXQeoncee53C1z1TdzXebx4cJ7gPiQQdz0upfz5dOhoczYZEqnKjjKJRmL1qx/uK1TNo5ML
	RITogWUDwZJ3qqyghQjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idEPs-0000eT-S9; Fri, 06 Dec 2019 14:17:08 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idEPp-0000cm-0D
 for kexec@lists.infradead.org; Fri, 06 Dec 2019 14:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575641822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AZIJx8+mn7hsmuKsrvwqAWlAV7JzTrtDo1L8YffDmDY=;
 b=FddozfcEAgRW/MyE9CvqzacX8jqpNgZO1N95wuXljYSt1Quu0lIgLWWuNFOjaC0+SY+xgJ
 gpmIhgjM6f0zGooYMGWBScw1abgo+3vmS0gHOHzN7b1IliA3gDupl3oyQ+aKRlSTwIFJcO
 dnMIkudgVcP4v4cauONoNuGFBfMM5gM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-vhicXEh8O6CvUvqBmFTRSw-1; Fri, 06 Dec 2019 09:16:58 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3256C800D5B;
 Fri,  6 Dec 2019 14:16:56 +0000 (UTC)
Received: from prarit.bos.redhat.com (prarit-guest.7a2m.lab.eng.bos.redhat.com
 [10.16.222.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F86960BF4;
 Fri,  6 Dec 2019 14:16:54 +0000 (UTC)
From: Prarit Bhargava <prarit@redhat.com>
To: prarit@redhat.com
Subject: Re: [RFC PATCH v5 0/3] printk: new ringbuffer implementation
Date: Fri,  6 Dec 2019 09:16:53 -0500
Message-Id: <20191206141653.1199-1-prarit@redhat.com>
In-Reply-To: <87zhg6zx31.fsf@linutronix.de>
References: <87zhg6zx31.fsf@linutronix.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: vhicXEh8O6CvUvqBmFTRSw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_061705_113786_0E38411F 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 sergey.senozhatsky@gmail.com, tglx@linutronix.de,
 torvalds@linux-foundation.org, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

  John Ogness <john.ogness@linutronix.de> wrote:
> Hi Prarit,
> 
> On 2019-12-05, Prarit Bhargava <prarit@redhat.com> wrote:
> > Based on the comments there is going to be a v6 but in any case I am
> > starting testing of this patchset on several large core systems across
> > multiple architectures (x86_64, ARM64, s390, ppc64le).  Some of those
> > systems are known to fail boot due to the large amount of printk output so
> > it will be good to see if these changes resolve those issues.
> 
> Right now the patches only include the ringbuffer as a separate entity
> with a test module. So they do not yet have any effect on printk.
> 
> If you apply the patches and then build the "modules" target, you will
> have a new test_prb.ko module. Loading that module will start some heavy
> testing of the ringbuffer. As long as the testing is successful, the
> module will keep testing. During this time the machine will be very
> slow, but should still respond.
> 
> The test can be stopped by unloading the module. If the test stops on
> its own, then a problem was found. The output of the test is put into
> the ftrace buffer.
> 
> It would be nice if you could run the test module on some fat machines,
> at least for a few minutes to see if anything explodes. ARM64 and
> ppc64le will probably be the most interesting, due to memory barrier
> testing.
> 

I've run the module overnight on all 4 arches I mentioned above.  I didn't
see any failures but IIUC the module test runs at max.  I'm going to put a
load test on these systems that introduces a variable load to interfere
with the prbtest module to see if that kicks anything.

> Otherwise I will definitely be reaching out to you when we are ready to
> perform actual printk testing with the newly agreed up semantics
> (lockless, per-console printing threads, synchronous panic
> consoles). Thanks for your help with this.
>

np :) but I should be the one thanking you ;)

P.

> John Ogness


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
