Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A55DB8BC
	for <lists+kexec@lfdr.de>; Thu, 17 Oct 2019 22:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeKMP4QlhjSd/UdErPZ+f2ysNNTf/sSWI9DJQG2F2bE=; b=Bd0Z69J1w8joYm
	19FKQk1pe2SnFXJ2ng6l95O3kuDmfKrVJHE00h3CqrOWLgy9wmexPoOdbn4wIFuF/Z2pgKv+1Zu5b
	snPSX9q057E1Jh1+KGob0qOaYSXoaeCei/62LoY/NmZ4DiKyKalw18lWOjckhbAgFOkU9104a+fhz
	edsJQhRCEnoECrrMUFgyI3OGaE5bmflKNFF3zvg7fouvA12E7gbWTcBzP3QbO1seHciP7ZEEddzsS
	ARPja1OiwZjeHAYP72JfQd3OY6lkmP/LTIv3hR4RWFzXQedEHEoUKcpjqVFoD4/ITSm3DXVAfmwcI
	zJouGdC/L22myefsFxZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLCqu-0008Ci-M6; Thu, 17 Oct 2019 20:58:32 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLCqo-0008C1-7i
 for kexec@lists.infradead.org; Thu, 17 Oct 2019 20:58:27 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x9HKwG2C017049
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 18 Oct 2019 05:58:16 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9HKwGur027889;
 Fri, 18 Oct 2019 05:58:16 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9HKwGfm030360; 
 Fri, 18 Oct 2019 05:58:16 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-9614193;
 Fri, 18 Oct 2019 05:55:55 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Fri,
 18 Oct 2019 05:55:54 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Jones <davej@codemonkey.org.uk>
Subject: RE: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Topic: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report())
Thread-Index: AQHVhDaJMiZOcS70Zki2e3rwILY9YaddZ+lw
Date: Thu, 17 Oct 2019 20:55:54 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC0359244C@BPXM09GP.gisp.nec.co.jp>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
 <20191016152932.GA25107@codemonkey.org.uk>
In-Reply-To: <20191016152932.GA25107@codemonkey.org.uk>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.134.144]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_135826_509832_FD30B1F0 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> On Wed, Oct 09, 2019 at 08:03:51PM +0000, Kazuhito Hagio wrote:
> 
>  > In this case, was the "makedumpfile Completed." message emitted?
>  > It looks like the buffer of program headers was not written to the file..
>  >
>  > Anyway, a debugging patch attached below.
> 
> Our kdump tooling redirects makedumpfile output to dmesg, and unfortunately this debug
> patch produces so much info it filled the ring buffer, so we didn't
> catch the beginning.

ah, if makedumpfile makes more than 64k program headers, the debug log
will be more than 8MB.  I should have told you this..

> I'll rework things so that it redirects to a file instead of dmesg, but
> it's going to take me a while to get that deployed and tested.

If your hosts have a big space enough, thare is another way that
you use cp for /proc/vmcore and use makedumpfile after reboot.
For example:

  # cp --sparse=always /proc/vmcore vmcore.cp
  reboot
  # makedumpfile -E -d 31 --message-level 31 --cyclic-buffer 4096 vmcore.cp dump.Ed31

where the --cyclic-buffer option is needed to behave like in 2nd kernrel
on the one of your hosts:
  [   13.341818] Buffer size for the cyclic mode: 4194304

The captured vmcore.cp may be useful for trying a next patch first.

Thanks,
Kazu



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
