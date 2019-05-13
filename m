Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7FE1B1B2
	for <lists+kexec@lfdr.de>; Mon, 13 May 2019 10:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpzqnDCc54WJzRJICxI2cQ7tmFoMSvgsIezwQ0YGLhc=; b=NYwlMBCxt7DOz+
	9/0CTjRY54AjFqy8VkSm1Bb7LEozmmQHmdhONvi/DCwBZ4vI4qqL5esZcnGofEsDqabr+yphwz7Gn
	lbN9NmCKf7+v+j9xQg5Rh2mEkbLwe5s0iaL7RwiI++2Qq1Q+bUMsJf0sI7EB5aob8SuIJSBJB/bKB
	YBU1MedTiehHSaJa0i6A2Itfm2lJFT0O0SN93rY+P9wnrm3hISo1LFRKGu4ekmIUKDRmhIsRMZfHk
	C0IOiij0brOS/YXal/LqzU7duFj6w0WtRRlFXOfiskVH+/tCsvjpZUkAxMZ2X+r5lMmYy85yjmH/f
	+xrT3pthG+cqM2sXQ42Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5zE-0001YD-AK; Mon, 13 May 2019 08:07:04 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5zA-0001Xq-PC
 for kexec@lists.infradead.org; Mon, 13 May 2019 08:07:02 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 62F6730842A0;
 Mon, 13 May 2019 08:07:00 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C5A4D1001DC0;
 Mon, 13 May 2019 08:06:55 +0000 (UTC)
Date: Mon, 13 May 2019 16:06:53 +0800
From: Baoquan He <bhe@redhat.com>
To: dyoung@redhat.com, Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190513080653.GD16774@MiWiFi-R3L-srv>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513075006.GB20105@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 13 May 2019 08:07:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_010700_838989_029CADD6 
X-CRM114-Status: GOOD (  16.94  )
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
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, hpa@zytor.com,
 j-nomura@ce.jp.nec.com, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Dave,

On 05/13/19 at 09:50am, Borislav Petkov wrote:
> On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
> > This is a critical bug which breaks memory hotplug,
> 
> Please concentrate and stop the blabla:
> 
> 36f0c423552d ("x86/boot: Disable RSDP parsing temporarily")
> 
> already explains what the deal is. This code was *purposefully* disabled
> because we ran out of time and it broke a couple of machines. Don't make

I remember your machine is the one on whihc the issue is reported. Could
you also test it and confirm if these all things found ealier are
cleared out?

Thanks
Baoquan

> me repeat all that - you were on CC on *all* threads and messages!
> 
> So we're going to try it again this cycle and if there's no fallout, it
> will go upstream. If not, it will have to be fixed. The usual thing.
> 
> And I don't care if Kairui's patch fixes this one problem - judging by
> the fragility of this whole thing, it should be hammered on one more
> cycle on as many boxes as possible to make sure there's no other SNAFUs.
> 
> So go test it on more machines instead. I've pushed it here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=next-merge-window
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
