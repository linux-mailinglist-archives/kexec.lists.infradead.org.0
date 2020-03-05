Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E1E179E6E
	for <lists+kexec@lfdr.de>; Thu,  5 Mar 2020 04:53:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVTWdMVjgKaWXEmbH9SIuYvwiH6co1y6qtyZWzVV6bE=; b=gd4tXIsC7VNoCC
	T6c4SQIjWDOrae1r9AvxeWpRpUnYm4wtocvtFrworaeqF9qrPvPtFiycaFN5D0wF/z5kD4spj/f6/
	ixzoVLJdvXvb3AcfPCk6/zRTJuZQlKQioHzdrvPzvGbkQ7gP29/RNahjjZ+1WVlUBb1CAJ3juu1QU
	M2TJHhQIIiFR+k+hRrEYrauezE5wR/47McdBtBRhl6Txoa6TjGyzQGf4Ln8tDwXGyIrRCi7vuoSE1
	mtTWwGIQfd2/GiRmZNm+M77R6kSwDr7zdUg5vmfZrIVEcmIZuY9dlv25vD1YorpGx9Yr87TrHOG7B
	RGGU5I/JR+LNEmwExVHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9hZz-0005Go-Db; Thu, 05 Mar 2020 03:53:47 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9hZw-0005Fv-G1
 for kexec@lists.infradead.org; Thu, 05 Mar 2020 03:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583380421;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7dRwSfMa7qKrmqL7MdtHbIwI2LezXgxKe/a4kDF36F0=;
 b=F1j0nU9VP/drViKCL2u9R9fnfReF6iknYncAHGha7nxmvqUxMz0rONxtnvk/CoiQsxDyWZ
 K/zkeQVclu5KDR8GujCrd9U1TsT0Qegan0S5ReKX7nRb7Xx4gu6IUjfabtZ/ZhQrwz0GLa
 jpAruDCzrnQc1HL6a8FllXomqY1GAAU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-xvX7mDflP-2_S1QXHKaujw-1; Wed, 04 Mar 2020 22:53:39 -0500
X-MC-Unique: xvX7mDflP-2_S1QXHKaujw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4AC018A5505;
 Thu,  5 Mar 2020 03:53:37 +0000 (UTC)
Received: from localhost (ovpn-12-116.pek2.redhat.com [10.72.12.116])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F54E5C219;
 Thu,  5 Mar 2020 03:53:31 +0000 (UTC)
Date: Thu, 5 Mar 2020 11:53:29 +0800
From: Baoquan He <bhe@redhat.com>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200305035329.GD4433@MiWiFi-R3L-srv>
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
 <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
 <CABeXuvqm1iUGt1GWC9eujuoaACdPiZ2X=3LjKJ5JXKZcXD_z_g@mail.gmail.com>
 <CABeXuvonZpwWfcUef4PeihTJkgH2ZC_RCKuLR3rH3Re4hx36Aw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABeXuvonZpwWfcUef4PeihTJkgH2ZC_RCKuLR3rH3Re4hx36Aw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_195344_622386_805F22BA 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jroedel@suse.de, Kairui Song <kasong@redhat.com>,
 Myron Stowe <myron.stowe@redhat.com>, linux-pci@vger.kernel.org,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Randy Wright <rwright@hpe.com>, Jerry Hoemann <jerry.hoemann@hpe.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Dave Young <dyoung@redhat.com>,
 Khalid Aziz <khalid@gonehiking.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

+Joerg to CC.

On 03/03/20 at 01:01pm, Deepa Dinamani wrote:
> I looked at this some more. Looks like we do not clear irqs when we do
> a kexec reboot. And, the bootup code maintains the same table for the
> kexec-ed kernel. I'm looking at the following code in

I guess you are talking about kdump reboot here, right? Kexec and kdump
boot take the similar mechanism, but differ a little.

> intel_irq_remapping.c:
> 
>         if (ir_pre_enabled(iommu)) {
>                 if (!is_kdump_kernel()) {
>                         pr_warn("IRQ remapping was enabled on %s but
> we are not in kdump mode\n",
>                                 iommu->name);
>                         clear_ir_pre_enabled(iommu);
>                         iommu_disable_irq_remapping(iommu);
>                 } else if (iommu_load_old_irte(iommu))

Here, it's for kdump kernel to copy old ir table from 1st kernel.

>                         pr_err("Failed to copy IR table for %s from
> previous kernel\n",
>                                iommu->name);
>                 else
>                         pr_info("Copied IR table for %s from previous kernel\n",
>                                 iommu->name);
>         }
> 
> Would cleaning the interrupts(like in the non kdump path above) just
> before shutdown help here? This should clear the interrupts enabled
> for all the devices in the current kernel. So when kdump kernel
> starts, it starts clean. This should probably help block out the
> interrupts from a device that does not have a driver.

I think stopping those devices out of control from continue sending
interrupts is a good idea. While not sure if only clearing the interrupt 
will be enough. Those devices which will be initialized by their driver
will brake, but devices which drivers are not loaded into kdump kernel
may continue acting. Even though interrupts are cleaning at this time,
the on-flight DMA could continue triggerring interrupt since the ir
table and iopage table are rebuilt.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
