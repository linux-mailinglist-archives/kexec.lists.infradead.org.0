Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6461C1985A5
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 22:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1tq4JlGXNdLo1DgGK9s3J+9FnMWb2FxagUQDIVJIc+8=; b=siKQm+Rbporgc6sSwSFTbp0LG
	3ifv3IwI9IdgxWgFTHpzzF6M2ahi+t4V021ZmgM6hahrlLr3yBgFmjNH14ciJe56j32xkMW8/HS0H
	C6/MkfkJ9Wwb8xD+/oFSNHNyk9tTfWcE3C9dRCPUd5+V1lp0azWsrNGB6vXwQ2pljphE4Hxi8WjEL
	gGiqVngZyEnIXE98zUOi5ZBJCGkQSgZK9SVMTBCQZpuwr8p7keMgYC/B+I0B5DI0SvOIyTn2gUFOU
	XF3xu3fJYV3nSIanAxdx39IVajeZHKCPO2EOGLRIo+CMNUez4K3B67UUosHNSqjZAvtfzAlzc7U7T
	33mC7dTig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1Ep-00085L-87; Mon, 30 Mar 2020 20:42:27 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1El-00084N-NQ
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 20:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1585600944; x=1617136944;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=pzei7EPNdSl0vQstWZdYvFBARJOekVDWFMh3y2n4Zzg=;
 b=TcezRqDkDfcKnTouSE4+B9IzLVVkc1r/nFnMyeY4Kp5QyY7RHG5SqlkI
 AfcgvcPREfGhwZeZtLmkiBx0TYR2vNyfxZMEXb/Ol3Lmpk9CkRSHgY2Fb
 fdF6oFiX4ldSAcLgX5RvDIsyK+HvwBQP1GOaw5cONNu1XW/4RPrjObuVh 8=;
IronPort-SDR: ZQ+rhy1V3tG9tO8gx4zMdwYV99PRd2MSqkQa6tUb6O30D5v+rRPtyfdHoJg1n+6rvekwp2wRW2
 RRTQjGuwOMAQ==
X-IronPort-AV: E=Sophos;i="5.72,325,1580774400"; d="scan'208";a="25953907"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 30 Mar 2020 20:42:17 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com (Postfix) with ESMTPS
 id C9F3AA2992; Mon, 30 Mar 2020 20:42:09 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 30 Mar 2020 20:42:09 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.134) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 30 Mar 2020 20:42:02 +0000
Subject: Re: [PATCH] swiotlb: Allow swiotlb to live at pre-defined address
To: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, Kairui Song
 <kasong@redhat.com>, <anthony.yznaga@oracle.com>, Jan Setje-Eilers
 <jan.setjeeilers@oracle.com>
References: <20200326162922.27085-1-graf@amazon.com>
 <20200328115733.GA67084@dhcp-128-65.nay.redhat.com>
 <CACPcB9d_Pz9SRhSsRzqygRR6waV7r8MnGcCP952svnZtpFaxnQ@mail.gmail.com>
 <20200330134004.GA31026@char.us.oracle.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <51432837-8804-0600-c7a3-8849506f999e@amazon.com>
Date: Mon, 30 Mar 2020 22:42:00 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200330134004.GA31026@char.us.oracle.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.134]
X-ClientProxiedBy: EX13D10UWB002.ant.amazon.com (10.43.161.130) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_134223_814291_C08AC648 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, brijesh.singh@amd.com,
 Lianbo Jiang <lijiang@redhat.com>, linux-doc@vger.kernel.org,
 Jan Kiszka <jan.kiszka@siemens.com>, "Schoenherr, Jan H." <jschoenh@amazon.de>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Baoquan He <bhe@redhat.com>, the
 arch/x86 maintainers <x86@kernel.org>, Laszlo Ersek <lersek@redhat.com>,
 aggh@amazon.com, "Lendacky, Thomas" <thomas.lendacky@amd.com>,
 alcioa@amazon.com, dhr@amazon.com, benh@amazon.com,
 Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, aagch@amazon.com,
 Robin Murphy <robin.murphy@arm.com>, dwmw@amazon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 30.03.20 15:40, Konrad Rzeszutek Wilk wrote:
> 
> 
> 
> On Mon, Mar 30, 2020 at 02:06:01PM +0800, Kairui Song wrote:
>> On Sat, Mar 28, 2020 at 7:57 PM Dave Young <dyoung@redhat.com> wrote:
>>>
>>> On 03/26/20 at 05:29pm, Alexander Graf wrote:
>>>> The swiotlb is a very convenient fallback mechanism for bounce buffering of
>>>> DMAable data. It is usually used for the compatibility case where devices
>>>> can only DMA to a "low region".
>>>>
>>>> However, in some scenarios this "low region" may be bound even more
>>>> heavily. For example, there are embedded system where only an SRAM region
>>>> is shared between device and CPU. There are also heterogeneous computing
>>>> scenarios where only a subset of RAM is cache coherent between the
>>>> components of the system. There are partitioning hypervisors, where
>>>> a "control VM" that implements device emulation has limited view into a
>>>> partition's memory for DMA capabilities due to safety concerns.
>>>>
>>>> This patch adds a command line driven mechanism to move all DMA memory into
>>>> a predefined shared memory region which may or may not be part of the
>>>> physical address layout of the Operating System.
>>>>
>>>> Ideally, the typical path to set this configuration would be through Device
>>>> Tree or ACPI, but neither of the two mechanisms is standardized yet. Also,
>>>> in the x86 MicroVM use case, we have neither ACPI nor Device Tree, but
>>>> instead configure the system purely through kernel command line options.
>>>>
>>>> I'm sure other people will find the functionality useful going forward
>>>> though and extend it to be triggered by DT/ACPI in the future.
>>>
>>> Hmm, we have a use case for kdump, this maybe useful.  For example
>>> swiotlb is enabled by default if AMD SME/SEV is active, and in kdump
>>> kernel we have to increase the crashkernel reserved size for the extra
>>> swiotlb requirement.  I wonder if we can just reuse the old kernel's
>>> swiotlb region and pass the addr to kdump kernel.
>>>
>>
>> Yes, definitely helpful for kdump kernel. This can help reduce the
>> crashkernel value.
>>
>> Previously I was thinking about something similar, play around the
>> e820 entry passed to kdump and let it place swiotlb in wanted region.
>> Simply remap it like in this patch looks much cleaner.
>>
>> If this patch is acceptable, one more patch is needed to expose the
>> swiotlb in iomem, so kexec-tools can pass the right kernel cmdline to
>> second kernel.
> 
> We seem to be passsing a lot of data to kexec.. Perhaps something
> of a unified way since we seem to have a lot of things to pass - disabling
> IOMMU, ACPI RSDT address, and then this.
> 
> CC-ing Anthony who is working on something - would you by any chance
> have a doc on this?


I see in general 2 use cases here:


1) Allow for a generic mechanism to have the fully system, individual 
buses, devices or functions of a device go through a particular, 
self-contained bounce buffer.

This sounds like the holy grail to a lot of problems. It would solve 
typical embedded scenarios where you only have a shared SRAM. It solves 
the safety case (to some extent) where you need to ensure that one 
device interaction doesn't conflict with another device interaction. It 
also solves the problem I've tried to solve with the patch here.

It's unfortunately a lot harder than the patch I sent, so it will take 
me some time to come up with a working patch set.. I suppose starting 
with a DT binding only is sensible. Worst case, x86 does also support DT ...

(And yes, I'm always happy to review patches if someone else beats me to it)


2) Reuse the SWIOTLB from the previous boot on kexec/kdump

I see little direct relation to SEV here. The only reason SEV makes it 
more relevant, is that you need to have an SWIOTLB region available with 
SEV while without you could live with a disabled IOMMU.

However, I can definitely understand how you would want to have a way to 
tell the new kexec'ed kernel where the old SWIOTLB was, so it can reuse 
its memory for its own SWIOTLB. That way, you don't have to reserve 
another 64MB of RAM for kdump.

What I'm curious on is whether we need to be as elaborate. Can't we just 
pass the old SWIOTLB as free memory to the new kexec'ed kernel and 
everything else will fall into place? All that would take is a bit of 
shuffling on the e820 table pass-through to the kexec'ed kernel, no?


Thanks,

Alex




Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
