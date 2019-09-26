Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E94BFA24
	for <lists+kexec@lfdr.de>; Thu, 26 Sep 2019 21:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdyJPvJErr8cabGYQMcGOy8KkfcWbXf4iCTG6qrDL0s=; b=UCfYxb3MgSKB1y
	iaOssVzG4YMfcYsoHe2h1ztPO53BC7RVnJKaprPakGG5/HXBFJzCuCKwLuzE/FEnl6chGWOwJQmBl
	5k10desrdPxKYQzUpQK4aWI3+3alK5O/v6X71ultr62vJadQruNq0nMEyREVEIs/Dta4HVUPEtr6g
	jnhA7hZg0JrVis97HhEU6qyHfdkGJsMAtFhSYJEVkB9d3XCLevtJFVYRxh8sUXJLumt+H+68aM6tj
	NeL8gtrDtC2IHjQ0qvZk7dQWvWvPTR4lN/Fw0oKk7HAIKzhP+6W3Au1tArKCrop+I2Equwzx69Bms
	zh4rxry3pE2Z+M8rJQEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZVu-0004jg-Or; Thu, 26 Sep 2019 19:33:19 +0000
Received: from scorn.kernelslacker.org ([2600:3c03:e000:2fb::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZVc-0004W2-E4
 for kexec@lists.infradead.org; Thu, 26 Sep 2019 19:33:02 +0000
Received: from [2601:196:4600:6634:ae9e:17ff:feb7:72ca]
 (helo=wopr.kernelslacker.org)
 by scorn.kernelslacker.org with esmtp (Exim 4.92)
 (envelope-from <davej@codemonkey.org.uk>)
 id 1iDZVV-00060S-Pp; Thu, 26 Sep 2019 15:32:53 -0400
Received: by wopr.kernelslacker.org (Postfix, from userid 1026)
 id 64DC156018D; Thu, 26 Sep 2019 15:32:53 -0400 (EDT)
Date: Thu, 26 Sep 2019 15:32:53 -0400
From: Dave Jones <davej@codemonkey.org.uk>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Subject: Re: makedumpfile: Fix divide by zero in print_report()
Message-ID: <20190926193253.GA10258@codemonkey.org.uk>
References: <20190924194005.GA7666@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359079B@BPXM09GP.gisp.nec.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC0359079B@BPXM09GP.gisp.nec.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: SpamAssassin invocation failed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_123300_626176_AE416C5E 
X-CRM114-Status: GOOD (  10.70  )
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

On Thu, Sep 26, 2019 at 06:41:48PM +0000, Kazuhito Hagio wrote:

 > > -----Original Message-----
 > > If info->max_mapnr and pfn_memhole are equal, we divide by zero when
 > > trying determine the 'shrinking' value.
 > > 
 > > On the system I saw this error, we arrived at this function with
 > > info->max_mapnr:0x0000000001080000 pfn_memhole:0x0000000001080000
 > 
 > Thank you for the patch.
 > I suppose that you see the error with the -E option, right?
 > 
 > It seems that the -E option has some problems with its statistics,
 > so I'm checking whether there is a better way to fix this.

Yes, we use the -E option.
We manage to get useful info from the generated dump after this fix, so
it seems it only affects the statistics output.

thanks,
	Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
