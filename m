Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416B98ACCD
	for <lists+kexec@lfdr.de>; Tue, 13 Aug 2019 04:43:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1H8IqZW5oZEZQshhe6frDKTymAchdDC/ttE4hhFJjU=; b=Kp4CvEgMhZFQRq
	7vv7aylY3BNZTCgP1eMoAaecfPOr9r2dx+57Z9PF6xNyCNazjSCaUVbHMHQnHyD6SYMZnRH9peX8u
	diAhc1HeSwiCl8hDwp3+TwhDpDpf/thfaf9GcwhtCE59xSO6RiXwtB8ZT/4imGYl5jvsWhx+upwHo
	Su6WjhGARz7iR95opyxcCvSgBy7zyCHtYZI8etGK48iIKXn8BKLKZ/iI5gEwcRokX43EsAQR7KkNP
	y6tTSQObYOUNsUI6mLeirPJIOGQlGcTLlxw8XuQMCxANvxjNf2VD0JVNWmRqh1qrc5whGP4CeSHS8
	uDIRNC3KiPX3fU3exrbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxMmZ-0007Ez-7Q; Tue, 13 Aug 2019 02:43:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxMmV-0007Eg-NI
 for kexec@lists.infradead.org; Tue, 13 Aug 2019 02:43:29 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DD8793A17F;
 Tue, 13 Aug 2019 02:43:25 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-72.pek2.redhat.com
 [10.72.12.72])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F5D55B681;
 Tue, 13 Aug 2019 02:43:20 +0000 (UTC)
Date: Tue, 13 Aug 2019 10:43:17 +0800
From: Dave Young <dyoung@redhat.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: Crash kernel with 256 MB reserved memory runs into OOM condition
Message-ID: <20190813024317.GA2862@dhcp-128-65.nay.redhat.com>
References: <d65e4a42-1962-78c6-1b5a-65cb70529d62@molgen.mpg.de>
 <20190812095029.GE5117@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812095029.GE5117@dhcp22.suse.cz>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 13 Aug 2019 02:43:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_194327_778939_6E9DE8A9 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, kasong@redhat.com, bhe@redhat.com,
 linux-pci@vger.kernel.org, =?iso-8859-1?Q?J=F6rg_R=F6del?= <joro@8bytes.org>,
 "x86@kernel.org" <x86@kernel.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Donald Buczek <buczek@molgen.mpg.de>,
 lijiang@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

On 08/12/19 at 11:50am, Michal Hocko wrote:
> On Mon 12-08-19 11:42:33, Paul Menzel wrote:
> > Dear Linux folks,
> > 
> > 
> > On a Dell PowerEdge R7425 with two AMD EPYC 7601 (total 128 threads) and
> > 1 TB RAM, the crash kernel with 256 MB of space reserved crashes.
> > 
> > Please find the messages of the normal and the crash kernel attached.
> 
> You will need more memory to reserve for the crash kernel because ...
> 
> > [    4.548703] Node 0 DMA free:484kB min:4kB low:4kB high:4kB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0kB unevictable:0kB writepending:0kB present:568kB managed:484kB mlocked:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
> > [    4.573612] lowmem_reserve[]: 0 125 125 125
> > [    4.577799] Node 0 DMA32 free:1404kB min:1428kB low:1784kB high:2140kB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0kB unevictable:15720kB writepending:0kB present:261560kB managed:133752kB mlocked:0kB kernel_stack:2496kB pagetables:0kB bounce:0kB free_pcp:212kB local_pcp:212kB free_cma:0kB
> 
> ... the memory is really depleted and nothing to be reclaimed (no anon.
> file pages) Look how tht free memory is below min watermark (node zone DMA has
> lowmem protection for GFP_KERNEL allocation).

We found similar issue on our side while working on kdump on SME enabled
systemd.  Kairui is working on some patches.

Actually on those SME/SEV enabled machines, swiotlb is enabled
automatically so at least we need extra 64M+ memory for kdump other
than the normal expectation.

Can you check if this is also your case?

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
