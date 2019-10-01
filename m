Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9ECC2DED
	for <lists+kexec@lfdr.de>; Tue,  1 Oct 2019 09:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QP93iaPb8nwbQQgSTijbGsG3V2jR2kg0037Bqswpp78=; b=GfMYTyDAmjYQlC
	9f8FMAcLnQuS0jJLiuegYz/ka90IhsEwpYiuaK25foLFtlDyLhEGs2fjlAqnc8Vrl6dnHY4fg7wzI
	y3rADluSIxip0jWyscQq4MDtb1PgOMMO4Hcffp7eDIi6Tf1uavlCFF2d1z7GmS9gO+8XKvVeEiEjp
	7Kvbco+uxfHp8tsQqqWQXYqahzwBeW9Cv+itoNjiLgTWONqb26hKWttr7JA/pl5sVNWzrIhe4HJbw
	aObgh81XWmDr5M7iXj9m+rLDrP0HhQIn546o4pi3Rb3OG7s2/g59y/291FQCbWOO5c1KgKyzFLE69
	7h6950V1lQ0LUxbwQJCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFClp-0003PJ-Mv; Tue, 01 Oct 2019 07:40:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFClh-0002q4-BJ
 for kexec@lists.infradead.org; Tue, 01 Oct 2019 07:40:24 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7FEF3A44AF6;
 Tue,  1 Oct 2019 07:40:19 +0000 (UTC)
Received: from localhost (ovpn-12-43.pek2.redhat.com [10.72.12.43])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B2703600C8;
 Tue,  1 Oct 2019 07:40:15 +0000 (UTC)
Date: Tue, 1 Oct 2019 15:40:12 +0800
From: Baoquan He <bhe@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] x86/kdump: Fix 'kmem -s' reported an invalid freepointer
 when SME was active
Message-ID: <20191001074012.GK31919@MiWiFi-R3L-srv>
References: <20190920035326.27212-1-lijiang@redhat.com>
 <20190927051518.GA13023@dhcp-128-65.nay.redhat.com>
 <87r241piqg.fsf@x220.int.ebiederm.org>
 <20190928000505.GJ31919@MiWiFi-R3L-srv>
 <875zldp2vj.fsf@x220.int.ebiederm.org>
 <20190928030910.GA5774@MiWiFi-R3L-srv>
 <87zhimks5j.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhimks5j.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 01 Oct 2019 07:40:19 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_004021_478500_1B202512 
X-CRM114-Status: GOOD (  23.03  )
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, Lianbo Jiang <lijiang@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 tglx@linutronix.de, Dave Young <dyoung@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 09/30/19 at 05:14am, Eric W. Biederman wrote:
> Baoquan He <bhe@redhat.com> writes:
> >> needs a little better description.  I know it is not a lot on modern
> >> systems but reserving an extra 1M of memory to avoid having to special
> >> case it later seems in need of calling out.
> >> 
> >> I have an old system around that I think that 640K is about 25% of
> >> memory.
> >
> > Understood. Basically 640K is wasted in this case. But we only do like
> > this in SME case, a condition checking is added. And system with SME is
> > pretty new model, it may not impact the old system.
> 
> The conditional really should be based on if we are reserving memory
> for a kdump kernel.  AKA if crash_kernel=XXX is specified on the kernel
> command line.
> 
> At which point I think it would be very reasonable to unconditionally
> reserve the low 640k, and make the whole thing a non-issue.  This would
> allow the kdump code to just not do anything special for any of the
> weird special case.
> 
> It isn't perfect because we need a page or so used in the first kernel
> for bootstrapping the secondary cpus, but that seems like the least of
> evils.  Especially as no one will DMA to that memory.
> 
> So please let's just change what memory we reserve when crash_kernel is
> specified.

Yes, makes sense, thanks for pointing it out.

> 
> >> How we interact with BIOS tables in the first 640k needs some
> >> explanation.  Both in the first kernel and in the crash kernel.
> >
> > Yes, totally agree.
> >
> > Those BIOS tables have been reserved as e820 reserved regions and will
> > be passed to kdump kernel for reusing. Memblock reserved 640K doesn't
> > mean it will cover the whole [0, 640K) region, it only searches for
> > available system RAM from memblock allocator.
> 
> Careful with that assumption.  My memory is that the e820 memory map
> frequently fails to cover areas like the real mode interrupt descriptor
> table at address 0.

OK, will think more about this. Thanks.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
