Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B9EC0F6B
	for <lists+kexec@lfdr.de>; Sat, 28 Sep 2019 05:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXUYpmnPzbj+GazTvswDjeoft06YLbRYLkIwQQNfK5o=; b=pftz07qlAyvXhr
	NaOQE9LqQOmHK4YcipWHqvNQFZ7BFAXzn8NYjIvJPt8id8Nt0S8ZX+oqi3rppCblv0Xfw9MF87DmS
	UVgW5P7HA0B7+t9Hik2wjqbAi0NCRUXQpEwXXi0o/+JKDGPGQs9GmJ5D9URlvqXhVOSL265ukyaIe
	zrjif05GcuUj8SXVF4yOojeRP64ywb4tVnqt31QKIvT1SR3L3aD84IGhqnX0LsG3ts1KBX0ozavId
	Nw8GM9Fm92fQTD+RmhXHtFcwLB/V3kmqx90EYIzYzqt3BY9m/G/NfPNmqcnaclg+53Hfd13FBaX5d
	G94PJSejR5LteouethfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE36p-0002jM-18; Sat, 28 Sep 2019 03:09:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE36k-0002j1-P6
 for kexec@lists.infradead.org; Sat, 28 Sep 2019 03:09:20 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 957561DD4;
 Sat, 28 Sep 2019 03:09:16 +0000 (UTC)
Received: from localhost (ovpn-12-27.pek2.redhat.com [10.72.12.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ABDC35D9C3;
 Sat, 28 Sep 2019 03:09:13 +0000 (UTC)
Date: Sat, 28 Sep 2019 11:09:10 +0800
From: Baoquan He <bhe@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] x86/kdump: Fix 'kmem -s' reported an invalid freepointer
 when SME was active
Message-ID: <20190928030910.GA5774@MiWiFi-R3L-srv>
References: <20190920035326.27212-1-lijiang@redhat.com>
 <20190927051518.GA13023@dhcp-128-65.nay.redhat.com>
 <87r241piqg.fsf@x220.int.ebiederm.org>
 <20190928000505.GJ31919@MiWiFi-R3L-srv>
 <875zldp2vj.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875zldp2vj.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Sat, 28 Sep 2019 03:09:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_200918_856883_3AFD13EB 
X-CRM114-Status: GOOD (  29.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, Lianbo Jiang <lijiang@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 tglx@linutronix.de, Dave Young <dyoung@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 09/27/19 at 09:32pm, Eric W. Biederman wrote:
> Baoquan He <bhe@redhat.com> writes:
> 
> > On 09/27/19 at 03:49pm, Eric W. Biederman wrote:
> >> Dave Young <dyoung@redhat.com> writes:
> >> >> In order to avoid such problem, lets occupy the first 640k region when
> >> >> SME is active, which will ensure that the allocated memory does not fall
> >> >> into the first 640k area. So, no need to worry about whether kernel can
> >> >> correctly copy the contents of the first 640K area to a backup region in
> >> >> purgatory().
> >> 
> >> We must occupy part of the first 640k so that we can start up secondary
> >> cpus unless someone has added another way to do that in recent years on
> >> SME capable cpus.
> >> 
> >> Further there is Fimware/BIOS interaction that happens within those
> >> first 640K.
> >> 
> >> Furthermore the kdump kernel needs to be able to read all of the memory
> >> that the previous kernel could read.  Otherwise we can't get a crash
> >> dump.
> >> 
> >> So I do not think ignoring the first 640K is the correct resolution
> >> here.
> >> 
> >> > The log is too simple,  I know you did some other tries to fix this, but
> >> > the patch log does not show why you can not correctly copy the 640k in
> >> > current kdump code, in purgatory here.
> >> >
> >> > Also this patch seems works in your test, but still to see if other
> >> > people can comment and see if it is safe or not, if any other risks
> >> > other than waste the small chunk of memory.  If it is safe then kdump
> >> > can just drop the backup logic and use this in common code instead of
> >> > only do it for SME.
> >> 
> >> Exactly.
> >> 
> >> I think at best this avoids the symptoms, but does not give a reliable
> >> crash dump.
> >
> > Sorry, didn't notice this comment at bottom.
> >
> > From code, currently the first 640K area is needed in two places.
> > One is for 5-level trampoline during boot compressing stage, in
> > find_trampoline_placement(). 
> >
> > The other is in reserve_real_mode(), as you mentioned, for application
> > CPU booting.
> >
> > Only allow these two put data inside first 640K, then lock it done. It
> > should not impact crash dump and parsing. And these two's content
> > doesn't matter.
> 
> Do I understand correctly that the idea is that the kernel
> that may crash will never touch these pages?  And that the reservation

Thanks a lot for your comments, Eric.

And yes. Except of the reserved real mode trampoline for secondary cpu if
the trampoline is allocated in this area, it will be reused. We search area
for real mode under 1M. Otherwise, the kernel that may crash will never
touch these pages.

> is not in the kernel that recovers from the crash?  That definitely

You mean kdump kernel? Only the e820 reserved regions which are inserted
into io_resource will be passed to kdump kernel, memblock reserved
region is only seen by the present kernel.

But for the content in first 640K, it's not erased, kdump kernel will
ignore it and take it as a available memory resource into memory
allocator.


> needs a little better description.  I know it is not a lot on modern
> systems but reserving an extra 1M of memory to avoid having to special
> case it later seems in need of calling out.
> 
> I have an old system around that I think that 640K is about 25% of
> memory.

Understood. Basically 640K is wasted in this case. But we only do like
this in SME case, a condition checking is added. And system with SME is
pretty new model, it may not impact the old system.

> 
> How we interact with BIOS tables in the first 640k needs some
> explanation.  Both in the first kernel and in the crash kernel.

Yes, totally agree.

Those BIOS tables have been reserved as e820 reserved regions and will
be passed to kdump kernel for reusing. Memblock reserved 640K doesn't
mean it will cover the whole [0, 640K) region, it only searches for
available system RAM from memblock allocator.

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
