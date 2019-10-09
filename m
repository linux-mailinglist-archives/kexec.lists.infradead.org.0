Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BBAD1B0B
	for <lists+kexec@lfdr.de>; Wed,  9 Oct 2019 23:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCxsL/Ja6y12oN+3xXUFvjqZBby+MjHbG/uaBlVy29Y=; b=TwQ8LPRwEnMJV6
	hTK33hqiho8gYOfVsAjj9iSsEUHtwdYNHqir/V3TJezP31jbJVavHYMi/RiEj3Q5Q5XOP6sJbmQO8
	ObOuk415acl6Eq4cLSlcAwB/ZLwPf1itRU3nAFpxc54TE6eEBO12g+tTO0HusVRClEEjkpT/wxz/j
	r7AEMq7vdZayAZz5PRsnrWMgLS1vXc4UVgRICuPPZx2k2LNpac7mFVLznPPmdQ1caG9ys7vNw33iK
	/mD0NivEuFCtyaSO8Fu7YA9rtbaZSIBZR/i9d33CD9/K+DJpxYO6up1ClfNWEtlpRrxn8+07ICthB
	SclHIWrHUZZ2Wiy5uohw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIJfh-0000Wd-VO; Wed, 09 Oct 2019 21:39:01 +0000
Received: from scorn.kernelslacker.org ([2600:3c03:e000:2fb::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIJfe-0000W8-VA
 for kexec@lists.infradead.org; Wed, 09 Oct 2019 21:39:00 +0000
Received: from [2601:196:4600:6634:ae9e:17ff:feb7:72ca]
 (helo=wopr.kernelslacker.org)
 by scorn.kernelslacker.org with esmtp (Exim 4.92)
 (envelope-from <davej@codemonkey.org.uk>)
 id 1iIJfb-0006L1-Q8; Wed, 09 Oct 2019 17:38:55 -0400
Received: by wopr.kernelslacker.org (Postfix, from userid 1026)
 id 65A39560186; Wed,  9 Oct 2019 17:38:55 -0400 (EDT)
Date: Wed, 9 Oct 2019 17:38:55 -0400
From: Dave Jones <davej@codemonkey.org.uk>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Subject: Re: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide by
 zero in print_report())
Message-ID: <20191009213855.GA14574@codemonkey.org.uk>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: SpamAssassin invocation failed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_143859_000931_FE0D560A 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Oct 09, 2019 at 08:03:51PM +0000, Kazuhito Hagio wrote:

 > >                  0x0000000000000000 0x0000000000000000         0
 > >   NULL           0x0000000000000000 0x0000000000000000 0x0000000000000000
 > >                  0x0000000000000000 0x0000000000000000         0
 > > 
 > 
 > In this case, was the "makedumpfile Completed." message emitted?
 > It looks like the buffer of program headers was not written to the file..

Our logging infra didn't capture the makedumpfile output. I've fixed
that up, so hopefully next time..

 > Anyway, a debugging patch attached below.
 > 
 > > There are some other failure cases with non-null data, so maybe there's >1 bug here.
 > > I've not seen an obvious pattern to this. eg...
 > > 
 > > https://pastebin.com/2uM4sBCF
 > > 
 > 
 > As for this case, I suspect that Elf64_Ehdr.e_phnum overflows
 > (i.e. num_loads_dumpfile > 65535):

Oh, good catch.  These are 256GB machines, so after discarding
everything, that explains why we end up with so many sections.
This also explains why it sometimes works I think, when the discarding
manages to get the total nr headers <64k.

 > > I'll put your patch on some of the affected hosts and see if this
 > > changes behaviour in any way.
 > 
 > If you can try the patch below, which includes the previous patch,
 > please show me:
 > - the debugging output of makedumpfile
 > - readelf -a vmcore
 > - ls -ls vmcore

Will take me a few days (travelling right now), but when hopefully by
the time I get back we'll have some data.

thanks for looking into this.

	Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
