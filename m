Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD5741B9D
	for <lists+kexec@lfdr.de>; Wed, 12 Jun 2019 07:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqPfEiJXdCq5Di6cwVdXbXoty+GH96asBeGPpiF29q0=; b=AZWCS3q2uWWHMQ
	ln9Gn5aPQZ9RuNKiP1IBCsODq1YNgiNyPec+j4q3KlcfvXAu7gQbj01NtMRlNANQvSZO8KcAXIz07
	AZHTndKXPr3nEJis+K4LmqH3aKR9ML1C42XbyGSJqD1s5fKhP/OaZT+7/YCBfKT2XWilyhWVA7co1
	4w1P5mU7V9fVgI8ouGZt85hn7tN+zBj8cIeX2rF/1X1cmFjZjgt+emPj9SiKnExs/LR1A8SKrp7ro
	KR+jZm3B2mXDDbx+Q6wBRSbnxPmUs7AIsl9O3UXsae8cyYMMyKpVZpdbhkV7bZFFc1uQNUvnlYfkc
	suKf8ukso0ctfbjMMJag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haw9R-0001mX-0v; Wed, 12 Jun 2019 05:50:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haw9N-0001kM-Kd
 for kexec@lists.infradead.org; Wed, 12 Jun 2019 05:50:23 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CB6C4859FF;
 Wed, 12 Jun 2019 05:50:01 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-58.pek2.redhat.com
 [10.72.12.58])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A692600CD;
 Wed, 12 Jun 2019 05:49:53 +0000 (UTC)
Date: Wed, 12 Jun 2019 13:49:49 +0800
From: Dave Young <dyoung@redhat.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190612054949.GA23066@dhcp-128-65.nay.redhat.com>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic>
 <20190608100139.GC26148@MiWiFi-R3L-srv>
 <20190608100623.GA9138@zn.tnic>
 <20190608102659.GA9130@MiWiFi-R3L-srv>
 <20190610113747.GD5488@zn.tnic>
 <20190612015549.GI26148@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612015549.GI26148@MiWiFi-R3L-srv>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 12 Jun 2019 05:50:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_225021_700979_90DD3211 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, lijiang <lijiang@redhat.com>,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, Borislav Petkov <bp@alien8.de>,
 luto@kernel.org, hpa@zytor.com, tglx@linutronix.de, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/12/19 at 09:55am, Baoquan He wrote:
> On 06/10/19 at 01:37pm, Borislav Petkov wrote:
> > On Sat, Jun 08, 2019 at 06:26:59PM +0800, Baoquan He wrote:
> > > OK, I see. Then it should be the issue we have met and talked about with
> > > Tom.
> > > https://lkml.kernel.org/r/20190604134952.GC26891@MiWiFi-R3L-srv
> > > 
> > > You can apply Tom's patch as below. I tested it, it can make kexec
> > > kernel succeed to boot, but failed for kdump kernel booting. The kdump
> > > kernel can boot till the end of kernel initialization, then hang with a
> > > call trace. I have pasted the log in the above thread. Haven't got the
> > > reason.
> > > http://lkml.kernel.org/r/508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com
> > 
> > I can confirm the same observation.
> 
> With further investigation, the failure after applying Tom's patch is
> caused by OOM. When increase crashkernel reservation to 512M, kdump
> kernel can boot successfully. I noticed your crashkernel reservation is
> 256M, that will fail and stuck there very possibly.

Usually for Fedora/RHEL variant kernel + userspace, 160M is a good value
works for common setup.  Sometimes people forgot to strip debuginfo,
thus the kernel modules packed in initramfs is too big and cause out of
memory.

> 
> So Tom's patch can fix the issue. We need further check why much more
> crashkernel memory is needed on those AMD boxes with sme support..
> 
> Thanks
> Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
