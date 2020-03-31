Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28CE1989BE
	for <lists+kexec@lfdr.de>; Tue, 31 Mar 2020 04:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0ZkK4IqSsbUOqB0dON0KODh4dicv0GQImQhpSDBn78=; b=anD82dKzNoq4rN
	vg3cioVADmR2gF57Xm489Iz4GwNrEb/CMC4fgRvWZfz5hcysFETVtfwnV4VukMA1RmlxzdVjqKAQ6
	FKDfiYP7V3WL8avVUJZskjKMQ/IFozBEK0R0MmEvxOxjExduYMCQnUuXocbl6m8q5xHwJvxxbQIFL
	+Ss7eF83YOeNu+BSlxAjga7vGG/TUg5kmpto1iz0mde8/t1Pw5zJx8eWYnZ6MppTgu17IldM5WDRN
	oiINejFEvAfJChbF1KB/eDDrjo9i/8geL8lg23ER1i8vzMMqlOnJbsxeY6WKNP83Jo3len07JNthR
	PPtCbvmA05rMZc+24N2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ6CP-0003sM-MG; Tue, 31 Mar 2020 02:00:17 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ6CM-0003rs-P0
 for kexec@lists.infradead.org; Tue, 31 Mar 2020 02:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585620013;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=J7J/WvCRzFDPjN13KVOAH7X96x+em5mLjdDYjxy7JL4=;
 b=izw+pmjLC9dr8T/qpYUQs11AqhXiRYs39kJdLJFRNcNyCXj6CXrmK4pmmJe1l8bSmI7RkI
 67WEKcjLxqiUEIOnbfcWfU0WxHcAlEczvKE+AyhzThyJEqK83+tKfXDFRlSZMuHc5paU6v
 aLPnCr8y9svIl4iCkem4fVdsuYte0U8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-EpzUZZB8O_GoilF-gs7kdA-1; Mon, 30 Mar 2020 22:00:09 -0400
X-MC-Unique: EpzUZZB8O_GoilF-gs7kdA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 179D58017DF;
 Tue, 31 Mar 2020 02:00:06 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-247.pek2.redhat.com
 [10.72.12.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 40CA15DA60;
 Tue, 31 Mar 2020 01:59:52 +0000 (UTC)
Date: Tue, 31 Mar 2020 09:59:49 +0800
From: Dave Young <dyoung@redhat.com>
To: Alexander Graf <graf@amazon.com>
Subject: Re: [PATCH] swiotlb: Allow swiotlb to live at pre-defined address
Message-ID: <20200331015949.GB81569@dhcp-128-65.nay.redhat.com>
References: <20200326162922.27085-1-graf@amazon.com>
 <20200328115733.GA67084@dhcp-128-65.nay.redhat.com>
 <CACPcB9d_Pz9SRhSsRzqygRR6waV7r8MnGcCP952svnZtpFaxnQ@mail.gmail.com>
 <20200330134004.GA31026@char.us.oracle.com>
 <51432837-8804-0600-c7a3-8849506f999e@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51432837-8804-0600-c7a3-8849506f999e@amazon.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_190014_891457_B35FE90B 
X-CRM114-Status: GOOD (  16.49  )
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
 Jan Kiszka <jan.kiszka@siemens.com>, "Schoenherr, Jan H." <jschoenh@amazon.de>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Baoquan He <bhe@redhat.com>, the arch/x86 maintainers <x86@kernel.org>,
 anthony.yznaga@oracle.com, Laszlo Ersek <lersek@redhat.com>, aggh@amazon.com,
 "Lendacky, Thomas" <thomas.lendacky@amd.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, alcioa@amazon.com,
 dhr@amazon.com, Jan Setje-Eilers <jan.setjeeilers@oracle.com>, benh@amazon.com,
 Kairui Song <kasong@redhat.com>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, aagch@amazon.com,
 Robin Murphy <robin.murphy@arm.com>, dwmw@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

[snip]
> 2) Reuse the SWIOTLB from the previous boot on kexec/kdump

We should only care about kdump

> 
> I see little direct relation to SEV here. The only reason SEV makes it more
> relevant, is that you need to have an SWIOTLB region available with SEV
> while without you could live with a disabled IOMMU.


Here is some comment in arch/x86/kernel/pci-swiotlb.c, it is enforced
for some reason.
        /*
         * If SME is active then swiotlb will be set to 1 so that bounce
         * buffers are allocated and used for devices that do not support
         * the addressing range required for the encryption mask.
         */
        if (sme_active())
                swiotlb = 1;

> 
> However, I can definitely understand how you would want to have a way to
> tell the new kexec'ed kernel where the old SWIOTLB was, so it can reuse its
> memory for its own SWIOTLB. That way, you don't have to reserve another 64MB
> of RAM for kdump.
> 
> What I'm curious on is whether we need to be as elaborate. Can't we just
> pass the old SWIOTLB as free memory to the new kexec'ed kernel and
> everything else will fall into place? All that would take is a bit of
> shuffling on the e820 table pass-through to the kexec'ed kernel, no?

Maybe either of the two is fine.  But we may need ensure these swiotlb
area to be reused explictly in some way.  Say about the crashkernel=X,high case,
major part is in above 4G region, and a small piece in low memory. Then
when kernel booting, kernel/driver initialization could use out of the
low memory, and the remain part for swiotlb could be not big enough and
finally swiotlb allocation fails. 

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
