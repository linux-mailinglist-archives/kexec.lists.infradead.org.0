Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D061C69DA
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 09:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrrcHIsCg7zCvZluKq34MQ4LEjRN7Pcf2pR5xjR9n5M=; b=QysBl2nFsF/bgr
	Mezny7ouLQ64rN77xPf4MbaTgktBd/jdMiQ5HXPbwGK5jlnPV/4im3LSnGEwWQ6Uj0gZRCEWeMBHs
	p1eSb5AeApU/5+KBp7HHxzJuj4zSUAMosnLWjb0B/27OHhUPZjFzROau71eQ1Lwgn+xKe6OhDFqBx
	k6HD5lgKPE1eaReSxtT7VbKt0M6bJ0DOua9s2eRVSZwcZI0e9kPPKC392LqH7fzJblPR7+z1pmhwM
	f2V0fbkkqa2S6M4qXPqD5fR8yXhgWfqaxCeGHBMwhtK89mmYZETSHo3Q3b/dJ78LRwu0XxqOu8vVk
	h7a9Sjqy0UzVrolnoR9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEFB-0003i1-Jv; Wed, 06 May 2020 07:13:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEF8-0003gG-4W
 for kexec@lists.infradead.org; Wed, 06 May 2020 07:13:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588749200;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q7rWtpU2NjnGfs9fyxCQ6Bx0DcM0ZNqmfsxZMDb7x6Q=;
 b=FtgzNszIPlVAdjzlqWRsxSqhsjeA0RFiU5RVmMSVKX33qm2lep7wkiTcY+UsKT1a2nUEWn
 a4xY3rO9T3oqhK4+MwcTXhAb2ywo0oBCF1qEa/HEE6kojlrAdfW6KBTQSr082255vHGIg1
 RwO+ilWEEt/cIi0CTNipxw2osAsxRj4=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-411-2pxtbF04PMyn8_raxLuFPQ-1; Wed, 06 May 2020 03:13:17 -0400
X-MC-Unique: 2pxtbF04PMyn8_raxLuFPQ-1
Received: by mail-qt1-f197.google.com with SMTP id g23so1734185qto.0
 for <kexec@lists.infradead.org>; Wed, 06 May 2020 00:13:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DoCIDqCuiWoGHXnE50qM2xoXLIrmM3bQHiMLGkhcZ2o=;
 b=kPT3CWOV+DyRqI/Mq+3ZWxWUAhiNsbvqpIcMyPP94HLbeoOQeSXehJrbHii35IPBhZ
 nDAEJKLUGkLADyUCGnLgllyfrMMQhzbi8ZhjqnyAp/fY3QI9T6+UZl1BimmMZnybGEG5
 oVHsEjhU1D3cunxqkhD4e/n3w+z6CO6iqDgxJnn0KW/VAEaeW+K+E05MitDZG46VQqv/
 zw4ijpu9dyFTUyAM53U69lpdOTf+iaAz6G8DEAdKrUasza+zKR7D6z5kUNCDtrR4CyeQ
 ewHFGM0y3r2f9dTmtTUd7BTLCYUM6AHS2Kw1u4uMkN5KOkp2PDlFPoeKM+0Bg+A7wxnT
 jfLg==
X-Gm-Message-State: AGi0PuY8M6kRzQuaNVKDOl2FRfeoD6O8gRGGoEAwuvPzLLFJD2BqurTD
 /tDWU9dWjwmdCRY/EG1AfGegCvyVURvQ2yXwyIOD69OWb8VIwn74QL2HNrrIVhMQ9MOZieVvHbk
 EbPoeB29z0a4sSI5kMrh6NBJ+qMmpDD/O9Js6
X-Received: by 2002:a05:6214:1242:: with SMTP id
 q2mr6503366qvv.198.1588749196490; 
 Wed, 06 May 2020 00:13:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypKEbWxJJMg9xFDO1XjXY3rIXhjPS6TWqbI6djgDFo8c2hH5M4mqWN3Uc5hKHaslYKwpo74PZ0fFlIxHP58AJlA=
X-Received: by 2002:a05:6214:1242:: with SMTP id
 q2mr6503348qvv.198.1588749196212; 
 Wed, 06 May 2020 00:13:16 -0700 (PDT)
MIME-Version: 1.0
References: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
 <1588705481-18385-2-git-send-email-bhsharma@redhat.com>
 <5ddc169b-f837-e478-43d9-4d6cf587aa05@marvell.com>
In-Reply-To: <5ddc169b-f837-e478-43d9-4d6cf587aa05@marvell.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 6 May 2020 12:43:03 +0530
Message-ID: <CACi5LpNCHipB-bU52JcWBj6bPhW5ZqfG+J7QPq-m5-xf2mqdSQ@mail.gmail.com>
Subject: Re: [EXT] [PATCH 1/2] net: qed*: Reduce RX and TX default ring count
 when running inside kdump kernel
To: Igor Russkikh <irusskikh@marvell.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_001322_264070_E5D3F4B5 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ariel Elior <aelior@marvell.com>, Alok Prasad <palok@marvell.com>,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 GR-everest-linux-l2 <GR-everest-linux-l2@marvell.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Igor,

On Wed, May 6, 2020 at 12:21 PM Igor Russkikh <irusskikh@marvell.com> wrote:
>
>
>
> >  #include <linux/compiler.h>
> > +#include <linux/crash_dump.h>
> >  #include <linux/version.h>
> >  #include <linux/workqueue.h>
> >  #include <linux/netdevice.h>
> > @@ -574,13 +575,13 @@ int qede_add_tc_flower_fltr(struct qede_dev *edev,
> > __be16 proto,
> >  #define RX_RING_SIZE         ((u16)BIT(RX_RING_SIZE_POW))
> >  #define NUM_RX_BDS_MAX               (RX_RING_SIZE - 1)
> >  #define NUM_RX_BDS_MIN               128
> > -#define NUM_RX_BDS_DEF               ((u16)BIT(10) - 1)
> > +#define NUM_RX_BDS_DEF               ((is_kdump_kernel()) ? ((u16)BIT(6) - 1) :
> > ((u16)BIT(10) - 1))
> >
> >  #define TX_RING_SIZE_POW     13
> >  #define TX_RING_SIZE         ((u16)BIT(TX_RING_SIZE_POW))
> >  #define NUM_TX_BDS_MAX               (TX_RING_SIZE - 1)
> >  #define NUM_TX_BDS_MIN               128
> > -#define NUM_TX_BDS_DEF               NUM_TX_BDS_MAX
> > +#define NUM_TX_BDS_DEF               ((is_kdump_kernel()) ? ((u16)BIT(6) - 1) :
> > NUM_TX_BDS_MAX)
> >
>
> Hi Bhupesh,
>
> Thanks for looking into this. We are also analyzing how to reduce qed* memory
> usage even more.
>
> Patch is good, but may I suggest not to introduce conditional logic into the
> defines but instead just add two new defines like NUM_[RT]X_BDS_MIN and check
> for is_kdump_kernel() in the code explicitly?
>
> if (is_kdump_kernel()) {
>         edev->q_num_rx_buffers = NUM_RX_BDS_MIN;
>         edev->q_num_tx_buffers = NUM_TX_BDS_MIN;
> } else {
>         edev->q_num_rx_buffers = NUM_RX_BDS_DEF;
>         edev->q_num_tx_buffers = NUM_TX_BDS_DEF;
> }
>
> This may make configuration logic more explicit. If future we may want adding
> more specific configs under this `if`.

Thanks for the review comments.
The suggestions seem fine to me. I will incorporate them in v2.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
