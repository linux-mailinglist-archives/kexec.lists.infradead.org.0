Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210C9DBBF3
	for <lists+kexec@lfdr.de>; Fri, 18 Oct 2019 06:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0MjFzMPX9UDy1bBBFv1Od4CozdaLYVw7RCF3hpZYYY=; b=CgM0fxrUlbWR4U
	xuplPINVhx8rZplWMV82DlV0BNbJ9q3qXvBY5k6EHL/L1jSC+xe0Vu8vYcx2LPKRWbCEcdpeg4jyi
	orY2hZ+iLtSa1UHvquTQWjBS1jh+9epwPKjcs1pqJXn2JqJlTW6941/1+wwKRkf5OyVG2guTlQCtK
	dnBAJJtr6899fLuakDvTQyhAQdhzSRbxkh2QPDNL+m3g4CK6sJwn/GngEwTXfVhsItjzYUqd44uXZ
	H/5aP+/kP4ehEje5b8n1eSQYcmgXEpgiD0U073hzj6uY9p3ezQupotYLxxZWfN/d461B2UYxiY/58
	PaxYw1hYQcXAV/aKHhLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLK0H-0003gL-5n; Fri, 18 Oct 2019 04:36:41 +0000
Received: from scorn.kernelslacker.org ([2600:3c03:e000:2fb::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLK0D-0003fd-Rn
 for kexec@lists.infradead.org; Fri, 18 Oct 2019 04:36:39 +0000
Received: from [2601:196:4600:6634:ae9e:17ff:feb7:72ca]
 (helo=wopr.kernelslacker.org)
 by scorn.kernelslacker.org with esmtp (Exim 4.92)
 (envelope-from <davej@codemonkey.org.uk>)
 id 1iLK00-0002PK-NC; Fri, 18 Oct 2019 00:36:24 -0400
Received: by wopr.kernelslacker.org (Postfix, from userid 1026)
 id 5213E560320; Fri, 18 Oct 2019 00:36:24 -0400 (EDT)
Date: Fri, 18 Oct 2019 00:36:24 -0400
From: Dave Jones <davej@codemonkey.org.uk>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Subject: Re: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide by
 zero in print_report())
Message-ID: <20191018043624.GA28930@codemonkey.org.uk>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
 <20191016152932.GA25107@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359244C@BPXM09GP.gisp.nec.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC0359244C@BPXM09GP.gisp.nec.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: SpamAssassin invocation failed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_213637_897225_9175D521 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, Oct 17, 2019 at 08:55:54PM +0000, Kazuhito Hagio wrote:

 > > I'll rework things so that it redirects to a file instead of dmesg, but
 > > it's going to take me a while to get that deployed and tested.
 > 
 > If your hosts have a big space enough, thare is another way that
 > you use cp for /proc/vmcore and use makedumpfile after reboot.
 > For example:
 > 
 >   # cp --sparse=always /proc/vmcore vmcore.cp
 >   reboot
 >   # makedumpfile -E -d 31 --message-level 31 --cyclic-buffer 4096 vmcore.cp dump.Ed31

I did try something like this (but without --sparse flag).
It took around 90 minutes to dump a 256GB core in my test, which isn't going
to be viable for our production hosts where I'm seeing the corruption
problems.

I've also been trying unsuccessfully to try and replicate it on an
isolated machine with similar specifications.

I'll give the sparse flag a try, though if memory is full enough to
panic-on-oom (Which seems to be one common trigger for this issue),
things might not be quite as sparse as I hope.

 > where the --cyclic-buffer option is needed to behave like in 2nd kernrel
 > on the one of your hosts:
 >   [   13.341818] Buffer size for the cyclic mode: 4194304
 > 
 > The captured vmcore.cp may be useful for trying a next patch first.

We had similar thoughts ;)

	Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
