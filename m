Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9491239336
	for <lists+kexec@lfdr.de>; Fri,  7 Jun 2019 19:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmvgNL/eoXq/B69Nf+q+F50LRT4m+qOopTtWcTUhCBA=; b=X61m7x6eSDMZif
	jNW4FGqJ6dUZ1O9TAZljqWbTlqsGsXa7fsPV5s3jXCSSeeRlRggQVJww/9Hc9PLm36J+alrSWfnOX
	KyuZZg+m/mBMIXtFcz/9nlE8dNwJjzpXBpkPQixvmumFb0T3doenVDOpORVQRTKRRpuEJqlgpmpG3
	WE/xJGyUWmLSWVn+jYYKlMiou4sT4bKS4Heb+ZFWKWLbXkXNtPEAoK30N4QVLff1Nqvn3yrMRdJV5
	ti5vVXLZS92bdPE+Rw8VMo01rzMcHd1XRCc1gje/0DGrrtpctI34tgj2F1ARXc94Ebbf22lNKrkY8
	aBA3zR+WX3t11dzC+glA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZIh6-00028M-W2; Fri, 07 Jun 2019 17:30:24 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZIh3-00027c-MT
 for kexec@lists.infradead.org; Fri, 07 Jun 2019 17:30:23 +0000
Received: from zn.tnic (p200300EC2F066300951FA2F4E0AD5C5F.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f06:6300:951f:a2f4:e0ad:5c5f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5767C1EC0997;
 Fri,  7 Jun 2019 19:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1559928616;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=T0oiUeJJ4yH6JALjOP9aRLwwDXx5xLU0ccWzcZC6ki4=;
 b=g+D00ICTFdwzwW2g2mw6pYLS2tw6CFd78aj88RlbG+UudJFX5v1G2Qr50L2t370gSzDuah
 fbf1AxA1DawepNa5oYEDfZWdYREuWnV0rHFi2VZ3k1whhodsJAZip5vYDtMhH8QziCP7+l
 EYhRUyv7hXiaT2CQkn/t6NX+JFZ2ngU=
Date: Fri, 7 Jun 2019 19:30:16 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dave Young <dyoung@redhat.com>, Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCHv7] x86/kdump: bugfix, make the behavior of crashkernel=X
 consistent with kaslr
Message-ID: <20190607173016.GM20269@zn.tnic>
References: <1548047768-7656-1-git-send-email-kernelfans@gmail.com>
 <20190125103924.GB27998@zn.tnic>
 <20190125134518.GA23595@dhcp-128-65.nay.redhat.com>
 <20190125140823.GC27998@zn.tnic>
 <20190128095809.GC3732@dhcp-128-65.nay.redhat.com>
 <20190128101831.GA27154@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190128101831.GA27154@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_103021_885972_3C950425 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86@kernel.org, Baoquan He <bhe@redhat.com>,
 Randy Dunlap <rdunlap@infradead.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, yinghai@kernel.org,
 vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 28, 2019 at 11:18:31AM +0100, Borislav Petkov wrote:
> On Mon, Jan 28, 2019 at 05:58:09PM +0800, Dave Young wrote:
> > Another reason is in case ,high we will need automatically reserve a
> > region in low area for swiotlb.  So for example one use
> > crashkernel=256M,high,  actual reserved memory is 256M above 4G and
> > another 256M under 4G for swiotlb.  Normally it is not necessary for
> > most people.  Thus we can not make ,high as default.
> 
> And how is the poor user to figure out that we decided for her/him that
> swiotlb reservation is something not necessary for most people and thus
> we fail the crashkernel= reservation?
> 
> IOW, that "logic" above doesn't make a whole lot of sense to me from
> user friendliness perspective.

So to show what I mean: I'm trying to reserve a crash kernel region on a
box here. I tried:

crashkernel=64M@16M

as it is stated in Documentation/kdump/kdump.txt.

Box said:

[    0.000000] crashkernel reservation failed - memory is in use.

Oh great.

Then I tried:

crashkernel=64M@64M

Box said:

[    0.000000] crashkernel reservation failed - memory is in use.

So I simply did:

crashkernel=64M

and the box said:

[    0.000000] Reserving 64MB of memory at 3392MB for crashkernel (System RAM: 16271MB)

So I could've gone a long time poking at the memory to find a suitable
address.

So do you see what I mean with making this as user-friendly and as
robust as possible?

In this case I don't care about *where* my crash kernel is - I only want
to have one loaded *somewhere*.

And the same strategy should be applied to other reservation attempts
- we should try hard to reserve and if we cannot reserve, then try an
alternating range.

I even think that

crashkernel=X@Y

should not simply fail if Y is occupied but keep trying and say

[    0.000000] Reserving 64MB of memory at alternative address 3392MB for crashkernel (System RAM: 16271MB)

and only fail when the user doesn't really want the kernel to try hard
by booting with

crashkernel=X@Y,strict

But that's for another day.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
