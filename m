Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E777819899B
	for <lists+kexec@lfdr.de>; Tue, 31 Mar 2020 03:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4znp+hz0NavjgsGoIDyrOGqqCAjEchJWIfSCmxQ0SJo=; b=OeY3JbqxdLsUz9
	mLNSjbcCdtpLeCzmkCCg9B3kVz3rlIl5XMBZtq7dHEHrO8PfXUhy9u+F1DhOIEcnf3M/IbSLqmUOC
	mTa00EEcE5Ry2CrDm9T3LrHOOChr8QVzB/FyZKsXjp28jQ4DOovgwEsbNaleHfdFbaGghlDyoV97J
	mtwW0mFUiqKu+8vJWvUZgmkh3tUmYuQCZOTUJczS8OcynadvoAZb+oK8BP47fT7VOEwQaKeVQuaDv
	Og9ZbTzOI8o32o/n9dh3JMupK4cBZq3XIqEki+Sc8fHcL4ma+vtK/lk9IhbeN7QGk2rn3bSQsjwoD
	lwF1P/+Kf+gEj8/hWueQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ5za-0007jf-0q; Tue, 31 Mar 2020 01:47:02 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ5zW-0007jB-Di
 for kexec@lists.infradead.org; Tue, 31 Mar 2020 01:47:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585619213;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Uo+1bM5jLbPf26TN6zEnjUeeLZzs+2jX0NNWi8ZBweA=;
 b=Ctgs+uuGyFpZmpYA0RLEQk9mYj5KxxtMSSUS3MAdBMO6ifNm2y0rLkdVuml12pB4oda7Da
 f+yxaD22cAapiGP0//Ep6E9+xXuvuWfv5xMu8sVbpamtJTmlmHJeymZ/3evGZ9OopkszTL
 hMr2I7zJOqt9PfBo2avkDpuvrtTmUNk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-219-ByELsUk1MmGYaIeZ40WgHg-1; Mon, 30 Mar 2020 21:46:50 -0400
X-MC-Unique: ByELsUk1MmGYaIeZ40WgHg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C48291005509;
 Tue, 31 Mar 2020 01:46:46 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-247.pek2.redhat.com
 [10.72.12.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 20332100EBB3;
 Tue, 31 Mar 2020 01:46:36 +0000 (UTC)
Date: Tue, 31 Mar 2020 09:46:32 +0800
From: Dave Young <dyoung@redhat.com>
To: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [PATCH] swiotlb: Allow swiotlb to live at pre-defined address
Message-ID: <20200331014632.GA81569@dhcp-128-65.nay.redhat.com>
References: <20200326162922.27085-1-graf@amazon.com>
 <20200328115733.GA67084@dhcp-128-65.nay.redhat.com>
 <CACPcB9d_Pz9SRhSsRzqygRR6waV7r8MnGcCP952svnZtpFaxnQ@mail.gmail.com>
 <20200330134004.GA31026@char.us.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330134004.GA31026@char.us.oracle.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_184658_549250_F898F187 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jan Kiszka <jan.kiszka@siemens.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Baoquan He <bhe@redhat.com>,
 the arch/x86 maintainers <x86@kernel.org>, anthony.yznaga@oracle.com,
 Laszlo Ersek <lersek@redhat.com>, aggh@amazon.com, "Lendacky,
 Thomas" <thomas.lendacky@amd.com>, alcioa@amazon.com,
 Alexander Graf <graf@amazon.com>, dhr@amazon.com,
 Jan Setje-Eilers <jan.setjeeilers@oracle.com>, benh@amazon.com,
 Kairui Song <kasong@redhat.com>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, aagch@amazon.com,
 Robin Murphy <robin.murphy@arm.com>, dwmw@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 03/30/20 at 09:40am, Konrad Rzeszutek Wilk wrote:
> On Mon, Mar 30, 2020 at 02:06:01PM +0800, Kairui Song wrote:
> > On Sat, Mar 28, 2020 at 7:57 PM Dave Young <dyoung@redhat.com> wrote:
> > >
> > > On 03/26/20 at 05:29pm, Alexander Graf wrote:
> > > > The swiotlb is a very convenient fallback mechanism for bounce buffering of
> > > > DMAable data. It is usually used for the compatibility case where devices
> > > > can only DMA to a "low region".
> > > >
> > > > However, in some scenarios this "low region" may be bound even more
> > > > heavily. For example, there are embedded system where only an SRAM region
> > > > is shared between device and CPU. There are also heterogeneous computing
> > > > scenarios where only a subset of RAM is cache coherent between the
> > > > components of the system. There are partitioning hypervisors, where
> > > > a "control VM" that implements device emulation has limited view into a
> > > > partition's memory for DMA capabilities due to safety concerns.
> > > >
> > > > This patch adds a command line driven mechanism to move all DMA memory into
> > > > a predefined shared memory region which may or may not be part of the
> > > > physical address layout of the Operating System.
> > > >
> > > > Ideally, the typical path to set this configuration would be through Device
> > > > Tree or ACPI, but neither of the two mechanisms is standardized yet. Also,
> > > > in the x86 MicroVM use case, we have neither ACPI nor Device Tree, but
> > > > instead configure the system purely through kernel command line options.
> > > >
> > > > I'm sure other people will find the functionality useful going forward
> > > > though and extend it to be triggered by DT/ACPI in the future.
> > >
> > > Hmm, we have a use case for kdump, this maybe useful.  For example
> > > swiotlb is enabled by default if AMD SME/SEV is active, and in kdump
> > > kernel we have to increase the crashkernel reserved size for the extra
> > > swiotlb requirement.  I wonder if we can just reuse the old kernel's
> > > swiotlb region and pass the addr to kdump kernel.
> > >
> > 
> > Yes, definitely helpful for kdump kernel. This can help reduce the
> > crashkernel value.
> > 
> > Previously I was thinking about something similar, play around the
> > e820 entry passed to kdump and let it place swiotlb in wanted region.
> > Simply remap it like in this patch looks much cleaner.
> > 
> > If this patch is acceptable, one more patch is needed to expose the
> > swiotlb in iomem, so kexec-tools can pass the right kernel cmdline to
> > second kernel.
> 
> We seem to be passsing a lot of data to kexec.. Perhaps something
> of a unified way since we seem to have a lot of things to pass - disabling
> IOMMU, ACPI RSDT address, and then this.

acpi_rsdp kernel cmdline is not useful anymore.  The initial purpose is
for kexec-rebooting in efi system.  But now we have supported efi boot
across kexec reboot thus that is useless now.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
