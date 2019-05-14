Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A85C1C0E9
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 05:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4VnLx96TP1/UbbvLtIxiQhkNU73WXmdLFW5lG7jCiw=; b=GtIF6zmCalubZ+
	OeaBJKdPZCRC5xtIaF8w6r6vBZZaLRe7MX1oCHVgN6WhcqLG0dlx+1CeWG+7betN9NwoZIhjie1uV
	/hONdcnFTVrajOv0rOEBOt/HN1y5nFag6tfHVwab30IXix+u4AgiAzOZM6PASOPt7zDpvIDa6eF9X
	d4ONN6+TVeSNo2DFGTr9mVEW1Y7SanV1NgiznrWdTrEGBm22cqnFNyBLxG/eLk7RsMonvOBsDvXiS
	r3M/zGqdceL1T7edlRKb2ngyxsLtY6uP8Mn5kejLch7K3nC3463z/JSKJyxNmkvdn8P7kgKk7/pWE
	RNJ66t6PqH15Rny2Kx7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQOCJ-0007IE-AQ; Tue, 14 May 2019 03:33:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQOCH-0007Hu-0Y
 for kexec@lists.infradead.org; Tue, 14 May 2019 03:33:46 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2BDBB308793E;
 Tue, 14 May 2019 03:33:44 +0000 (UTC)
Received: from localhost (ovpn-12-114.pek2.redhat.com [10.72.12.114])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A3BC19C69;
 Tue, 14 May 2019 03:33:40 +0000 (UTC)
Date: Tue, 14 May 2019 11:33:38 +0800
From: Baoquan He <bhe@redhat.com>
To: Dave Young <dyoung@redhat.com>, dirk.vandermerwe@netronome.com,
 j-nomura@ce.jp.nec.com
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190514033338.GA6612@MiWiFi-R3L-srv>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 14 May 2019 03:33:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_203345_077474_A94D1BC9 
X-CRM114-Status: GOOD (  16.53  )
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
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/14/19 at 11:22am, Dave Young wrote:
> On 05/13/19 at 04:06pm, Baoquan He wrote:
> > Hi Dave,
> > 
> > On 05/13/19 at 09:50am, Borislav Petkov wrote:
> > > On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
> > > > This is a critical bug which breaks memory hotplug,
> > > 
> > > Please concentrate and stop the blabla:
> > > 
> > > 36f0c423552d ("x86/boot: Disable RSDP parsing temporarily")
> > > 
> > > already explains what the deal is. This code was *purposefully* disabled
> > > because we ran out of time and it broke a couple of machines. Don't make
> > 
> > I remember your machine is the one on whihc the issue is reported. Could
> > you also test it and confirm if these all things found ealier are
> > cleared out?
> > 
> 
> I did some tests on the laptop,  thing is:
> 1. apply the 3 patches (two you posted + Boris's revert commit 52b922c3d49c)
>    on latest Linus master branch, everything works fine.
> 
> 2. build and test the tip/next-merge-window branch, kernel hangs early
> without output, (both 1st boot and kexec boot)

Thanks, Dave.

Yeah, I also tested on a HP machine, problem reprodued on the current
master branch when revert commit 52b922c3d49c.

Then apply these two patches, problem solved.

Tried boris's next-merge-window branch too, kexec works very well.

Dirk, Junichi, feel free to add your test result if you have time.

> 
> Another thing is we can move the get rsdp after console_init, but that
> can be done later as separate patch.

Yes, agree.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
