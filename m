Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED56C0EC1
	for <lists+kexec@lfdr.de>; Sat, 28 Sep 2019 01:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjdcowqA57fHADrGZicw1k/ppzNFFgV6RcQYBPvxyKU=; b=u39N4nFy82ulT7
	vj7s/lxgAfKC/Xlwi4yznnUaMQTj6XoQ5iQ3RgrgmvlLA9ut8HC07xreuNdLBOs1V+DoAGJ3sGRa4
	DVnyv8RxnY0xqrptG9mwUfk+0HSXlMQHRGqScl21hPbcbw0FvS0LK5IDsNEisUhed1qYIKBoiTu3G
	6sjox3fXKfr5R4iAJVFCTxTlbP8Bggny5ZiiEX8usnNj5cUgqdAjW7O6GGmstujjGcmT4VbrIG5Xs
	qUfvaLKYmJ+yhVovbUzpGtrW3qNdHC1/AIBLZz+vLIfpDVUIqBG1ie+fRseC09ODwiP7rE3wNC39M
	IxWvLARZ2qcPQ0lT8ESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE01w-0000AG-PL; Fri, 27 Sep 2019 23:52:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE01s-00009g-OA
 for kexec@lists.infradead.org; Fri, 27 Sep 2019 23:52:06 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3D3E918C426D;
 Fri, 27 Sep 2019 23:52:03 +0000 (UTC)
Received: from localhost (ovpn-12-27.pek2.redhat.com [10.72.12.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 002EF1EC;
 Fri, 27 Sep 2019 23:51:59 +0000 (UTC)
Date: Sat, 28 Sep 2019 07:51:56 +0800
From: Baoquan He <bhe@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] x86/kdump: Fix 'kmem -s' reported an invalid freepointer
 when SME was active
Message-ID: <20190927235156.GI31919@MiWiFi-R3L-srv>
References: <20190920035326.27212-1-lijiang@redhat.com>
 <20190927051518.GA13023@dhcp-128-65.nay.redhat.com>
 <87r241piqg.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r241piqg.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Fri, 27 Sep 2019 23:52:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_165204_827397_C805241E 
X-CRM114-Status: GOOD (  22.56  )
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, Lianbo Jiang <lijiang@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 tglx@linutronix.de, Dave Young <dyoung@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 09/27/19 at 03:49pm, Eric W. Biederman wrote:
> >> In order to avoid such problem, lets occupy the first 640k region when
> >> SME is active, which will ensure that the allocated memory does not fall
> >> into the first 640k area. So, no need to worry about whether kernel can
> >> correctly copy the contents of the first 640K area to a backup region in
> >> purgatory().
> 
> We must occupy part of the first 640k so that we can start up secondary
> cpus unless someone has added another way to do that in recent years on
> SME capable cpus.
> 
> Further there is Fimware/BIOS interaction that happens within those
> first 640K.
> 
> Furthermore the kdump kernel needs to be able to read all of the memory
> that the previous kernel could read.  Otherwise we can't get a crash
> dump.
> 
> So I do not think ignoring the first 640K is the correct resolution
> here.

We discussed and tried many ways to copy the first 640K of 1st kernel
out since kernel data may be allocated there, then crash need it to
parse. But SME makes the copy very difficult to do, because the first
640K is encrypted in 1st kernel, but the copy is done in purgatory with
1:1 ident-mapping and unencrypted.

Finally we decided this way as patch does. Reserving it in memblock is
not ignoring the first 640K, but lock it down to avoid any later kernel
data allocated in this area. The first 640K will be taken as system RAM
of kdump kernel as is. Like this, no available kernel information
could be located in this area, then we don't care if the copy is correct
or not.

One word, what the patch is doing is locking down the first 640K after 
reserve_real_mode() invocation. Putting it after reserve_real_mode() is
because reserve_real_mode() may put real mode trampoline inside first
640K. Surely the real mode trampoline will be discarded too in kdump
kernel, since it's not important and unnecessary for crash parsing.

I think Lianbo need rewrite this patch log to make it clearer.


diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index 77ea96b794bd..5bfb2c83bb6c 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -1148,6 +1148,9 @@ void __init setup_arch(char **cmdline_p)

        reserve_real_mode();

+       if (sme_active())
+               memblock_reserve(0, 640*1024);
+
        trim_platform_memory_ranges();
        trim_low_memory_range();


> 
> > The log is too simple,  I know you did some other tries to fix this, but
> > the patch log does not show why you can not correctly copy the 640k in
> > current kdump code, in purgatory here.
> >
> > Also this patch seems works in your test, but still to see if other
> > people can comment and see if it is safe or not, if any other risks
> > other than waste the small chunk of memory.  If it is safe then kdump
> > can just drop the backup logic and use this in common code instead of
> > only do it for SME.
> 
> Exactly.
> 
> I think at best this avoids the symptoms, but does not give a reliable
> crash dump.
> 
> Eric

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
