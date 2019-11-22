Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5BD107986
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 21:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6BLIhKzaxzV/iQ3OPQTkOzd3pMAYrENdffe2r8K4FE=; b=Lg2kZ0O+nfRhCN
	Lt4bUFUMK24jaPDQGlnh0dywHm1tCtSg2aPX8q5awz4zfi/V5Z04/fduOcCbnbC/jxRnKVO6nrEQY
	Fl7nINbR3dGfUbAV+UTgecS/WVoDVPTPT8gbEZTGqh2wBXXezObi74nrOxKKqw684iOh+4B/E7IfY
	iFIAsPURowbP3RI2i1icQuZ8TvJtGu5BdEsYv45LwysmwPOEJ+PIDbYzsygHvo4ZsNyCyx7yHK+Ik
	k1uk45sGO9JA4x4uv2lIQFHPwIVjl7u19jVVC5VNRIJXU0vssGf9omrOrJLlw1ibTXpqhvuR61Zyl
	cQliWjpQfO5cty7pxm9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYFfy-0008En-93; Fri, 22 Nov 2019 20:37:10 +0000
Received: from scorn.kernelslacker.org ([2600:3c03:e000:2fb::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYFfu-0008EO-TF
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 20:37:08 +0000
Received: from [2601:196:4600:6634:ae9e:17ff:feb7:72ca]
 (helo=wopr.kernelslacker.org)
 by scorn.kernelslacker.org with esmtp (Exim 4.92)
 (envelope-from <davej@codemonkey.org.uk>)
 id 1iYFfr-000779-24; Fri, 22 Nov 2019 15:37:03 -0500
Received: by wopr.kernelslacker.org (Postfix, from userid 1026)
 id BD55D560189; Fri, 22 Nov 2019 15:37:02 -0500 (EST)
Date: Fri, 22 Nov 2019 15:37:02 -0500
From: Dave Jones <davej@codemonkey.org.uk>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Subject: Re: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide by
 zero in print_report())
Message-ID: <20191122203702.GA4615@codemonkey.org.uk>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
 <20191009213855.GA14574@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593DA7@BPXM09GP.gisp.nec.co.jp>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035949A4@BPXM09GP.gisp.nec.co.jp>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03595014@BPXM09GP.gisp.nec.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03595014@BPXM09GP.gisp.nec.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: SpamAssassin invocation failed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_123706_942963_1564324D 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
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

On Wed, Nov 13, 2019 at 07:36:01PM +0000, Kazuhito Hagio wrote:

 > I think I've fixed the ELF issues which I could reproduce:
 > - wrong statistics
 > - e_phnum overflow
 > 
 > If you still see any problems with the latest makedumpfile,
 > please let me know.
 > 
 > Thanks,
 > Kazu

It's taken me a little while to get this stuff into our production
systems, but things are looking much better so far.  Since I pushed out
the fixes, I've seen no new corrupted dumps.  I'll keep an eye on things
and let you know if anything new comes up.

thanks!

	Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
