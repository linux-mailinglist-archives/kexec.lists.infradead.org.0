Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53EE27E1B
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 15:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GweGYAM/1k3gEt0xp3eX3gG55MZ/NOQ7h49cwLqsUKU=; b=RdfFmR9wPLLdXF
	dTv7RZsWkpksbyiZd9FK5QihGvR5pR9BbxjNpoyqDz3UaLtTrhkeswSfvp60CWQGTOFqKfmCRUhRn
	+OEUvEs9Eqd7sVkqwDDqhSOY2vfuz+f5X31g0WsW9RxFLdjSVOqiUmObRQy6MV93dp1Ef4ElrT6vy
	hQoul9GsNLOxE9RGONcAQzoJf9Z/o/iJ3/8i4dwi4w0SxqW5/64MtI+QiFrnjPHoKWT0HV9Qo//cJ
	RdhNOT3Ou0Q9nOEHfAG/wCPBVb1szlR+8db84PgnqJQcmv5G8jibzymMIf/wQ5z7xGlcuSCrV2zbQ
	3ptJ/n21pe7p2JAnM2YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnkR-0000od-2E; Thu, 23 May 2019 13:27:07 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnkK-0000o8-NU
 for kexec@lists.infradead.org; Thu, 23 May 2019 13:27:05 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E02BE30BB557;
 Thu, 23 May 2019 13:26:57 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-185.pek2.redhat.com
 [10.72.12.185])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 778F04385;
 Thu, 23 May 2019 13:26:55 +0000 (UTC)
Date: Thu, 23 May 2019 21:26:50 +0800
From: Dave Young <dyoung@redhat.com>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v2 1/4] x86: Update boot parameters defination
Message-ID: <20190523132650.GA12251@dhcp-128-65.nay.redhat.com>
References: <20190514050959.21093-1-kasong@redhat.com>
 <20190514050959.21093-2-kasong@redhat.com>
 <20190523030144.GA8174@dhcp-128-65.nay.redhat.com>
 <CACPcB9c=TCn2Xy8sPwOjjFBTGcMe0_W5uLm-q7c9YDF2dYJivg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9c=TCn2Xy8sPwOjjFBTGcMe0_W5uLm-q7c9YDF2dYJivg@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 23 May 2019 13:26:59 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_062702_073316_9D4EA766 
X-CRM114-Status: GOOD (  22.21  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/23/19 at 07:12pm, Kairui Song wrote:
> On Thu, May 23, 2019 at 11:01 AM Dave Young <dyoung@redhat.com> wrote:
> >
> > Hi Kairui
> > On 05/14/19 at 01:09pm, Kairui Song wrote:
> > > Since kernel commit e6e094e053af75 ("x86/acpi, x86/boot: Take RSDP address
> > > from boot params if available"), kernel accept a acpi_rsdp_addr param in
> > > boot_params. Sync the x86_linux_param_header to support this param.
> > >
> > > Signed-off-by: Kairui Song <kasong@redhat.com>
> > > ---
> > >  include/x86/x86-linux.h | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/include/x86/x86-linux.h b/include/x86/x86-linux.h
> > > index 352ea02..a5d8df8 100644
> > > --- a/include/x86/x86-linux.h
> > > +++ b/include/x86/x86-linux.h
> > > @@ -45,8 +45,7 @@ struct apm_bios_info {
> > >       uint16_t cseg_len;      /* 0x4e */
> > >       uint16_t cseg_16_len;   /* 0x50 */
> > >       uint16_t dseg_len;      /* 0x52 */
> > > -     uint8_t  reserved[44];  /* 0x54 */
> > > -};
> > > +} __attribute__((packed));
> >
> > It should be good to keep same as the kernel header without packed
> > attribute.
> >
> > is it possible to sync the latest mainline uapi bootparam header file,
> > maybe after this series get solved?
> >
> 
Hi Kairui,

> Hi Dave,
> 
> I can remove the packed attr then, just ensure it won't break
> anything, a bit paranoid maybe...
> 
> About sync the whole structure, the problem is kexec tools' header
> structure is different so that will change a lot. Maybe could be
> discussed seperately.

Yes, agreed, it is not necessary to do in this series.

> 
> -- 
> Best Regards,
> Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
