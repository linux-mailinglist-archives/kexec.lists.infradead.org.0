Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1032DA4F08
	for <lists+kexec@lfdr.de>; Mon,  2 Sep 2019 08:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psQPF9uZXVHAf7Q0ufFZv6rfjthdqHyzK0JoHoZTJTA=; b=YMVX6EHX8dmUFE
	iJvo0px3gJUhaunIwCileP/OI7Thvo0bZZsDt4+bQhEVKjXBko37y7p+qvUVxAJ86yvohbA/9PIOX
	ovH7dQYATMR2W/ab4RnqF1LlQKupJe7CB51QZgPA0lhPeAusFp8LEKJMtrJjX55MyGxh4YstSZPsH
	kRwGBS0qBslq+TkZs/Z4s6+1fTowsJpcJpNXGk7xAczYSKUG0M/dXB2P16OO3l01oNcfOS/NhJO2w
	r9wK3xYUp05nwghwsRdnCm9QYDAqEw2LanZGvMETDioMdEKNrmbNodv35FO0ZEFEZjCBkhNPHhxoU
	WILjrZZlxmnPZV2Xfn9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4fQI-0007Rt-Ps; Mon, 02 Sep 2019 06:02:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4fQD-0007RS-Sv
 for kexec@lists.infradead.org; Mon, 02 Sep 2019 06:02:39 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F1FE281F13;
 Mon,  2 Sep 2019 06:02:36 +0000 (UTC)
Received: from localhost (ovpn-12-28.pek2.redhat.com [10.72.12.28])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E4D3219D7A;
 Mon,  2 Sep 2019 06:02:35 +0000 (UTC)
Date: Mon, 2 Sep 2019 14:02:33 +0800
From: Baoquan He <bhe@redhat.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
Message-ID: <20190902060233.GA13964@MiWiFi-R3L-srv>
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190830092351.GE12242@MiWiFi-R3L-srv>
 <99faeaab-a4ea-e204-f4e8-9b74f86e5e43@molgen.mpg.de>
 <CACi5LpOBQCXv1v=aGjLZ0tE_qUDgcR8DtcC_uA5nC-tmm4UnZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpOBQCXv1v=aGjLZ0tE_qUDgcR8DtcC_uA5nC-tmm4UnZw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 02 Sep 2019 06:02:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_230237_954886_03342CEA 
X-CRM114-Status: GOOD (  22.54  )
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
Cc: Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>,
 Donald Buczek <buczek@molgen.mpg.de>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/30/19 at 03:35pm, Bhupesh Sharma wrote:
> On Fri, Aug 30, 2019 at 3:04 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
> >
> > Dear Baoquan,
> >
> > On 8/30/19 11:23 AM, Baoquan He wrote:
> > > On 08/30/19 at 11:12am, Donald Buczek wrote:
> > >> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> > >> region on 5-level paging") changed the base of the direct mapping
> > >> from 0xffff880000000000 to 0xffff888000000000. This was merged
> > >> into v4.20-rc2.
> > >
> > > A good catch and necessary fix, thanks.
> > >
> > > Does it have issue in makedumpfile?
> >
> > We don't use makedumpfile. We use `cp /proc/vmcore /mnt/crash.vmcore` in the panic kernel.
> 
> That shouldn't be a problem in makedumpfile as we have a generic way
> to calculate the PAGE_OFFSET value there from the PT_LOADs in the
> '/proc/kcore' file (which I mentioned in the other email conversation,
> see [0]):

Yeah, right.

> 
> static int
> get_page_offset_x86_64(void)
> {
> <..snip..>
>     if (get_num_pt_loads()) {
>         /*
>          * Linux 4.19 (only) adds KCORE_REMAP PT_LOADs, which have
>          * virt_start < __START_KERNEL_map, to /proc/kcore. In order
>          * not to select them, we select the last valid PT_LOAD.
>          */
>         for (i = 0;
>             get_pt_load(i, &phys_start, NULL, &virt_start, NULL);
>             i++) {
>             if (virt_start != NOT_KV_ADDR
>                     && virt_start < __START_KERNEL_map
>                     && phys_start != NOT_PADDR) {
>                 page_offset = virt_start - phys_start;
>             }
>         }
>         if (page_offset) {
>             info->page_offset = page_offset;
>             DEBUG_MSG("page_offset  : %lx (pt_load)\n",
>                 info->page_offset);
>             return TRUE;
>         }
>     }
> <..snip..>
> 
> Also as I mentioned in the other thread, I don't think adding
> different MACRO value for a kernel version is a long-term maintainable
> approach. Instead I am working on adding a similar functionality as
> present in makedumpfile to make the PAGE_OFFSET calculation generic.
> Only if we fail to calculate PAGE_OFFSET through a generic method
> should we fall back on MACRO values for backward compatibility.
> 
> I will try to post the patch for reviews by tomorrow.
> 
> [0]. https://lkml.org/lkml/2019/8/28/1060

Sounds a good idea, thanks for the effort.

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
