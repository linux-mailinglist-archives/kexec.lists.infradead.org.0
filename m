Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CCB142A86
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 13:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwWeoO77JusGuxCn6JeCHUAqm6byB1ws4QFbSxTzYXk=; b=eAy++najs93+3F
	DzP4rF0NLXZ7b7o8ZJ99oIWLNfLA6Bgpz+4OHh6KRJnrq4CddYJm7tCcWHHBarBpoGSY/nYm0Ornb
	FN5qBLl2Oy1R/KD5bxQ1uHwkuTkP7oJN+Xq8DqITHdhvv8nV4iUAed6ekXSiU5yPwSEHQX+Wlap0v
	qrqOYWDIjRdXVnPVx4TSDzNSsxxuPPdOujvmJSNk8YE7gY0KCdLk7CU8DKcc7ug3c16aVX0DGtwEy
	/7rcNqy4+GznggvUynqlwIt8y8ZGjxtnUTBmuFKlGiJRrUGMPgdp7ILptLtdu6Lupae4+C1bqQWo+
	55Hr+OUaG9QklzRx4t/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW5j-0001OK-9C; Mon, 20 Jan 2020 12:23:39 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW5b-0008Mt-C9
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 12:23:36 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 04:19:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="426712609"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jan 2020 04:19:26 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1itW1f-0001Is-44; Mon, 20 Jan 2020 14:19:27 +0200
Date: Mon, 20 Jan 2020 14:19:27 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
Message-ID: <20200120121927.GJ32742@smile.fi.intel.com>
References: <20161202195416.58953-1-andriy.shevchenko@linux.intel.com>
 <20161202195416.58953-3-andriy.shevchenko@linux.intel.com>
 <20161215122856.7d24b7a8@endymion>
 <20161216023213.GA4505@dhcp-128-65.nay.redhat.com>
 <1481890738.9552.70.camel@linux.intel.com>
 <20161216143330.69e9c8ee@endymion>
 <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042331_465744_F419FF2E 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-efi@vger.kernel.org, ard.biesheuvel@linaro.org,
 matt@codeblueprint.co.uk, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Dec 17, 2016 at 06:57:21PM +0800, Dave Young wrote:
> Ccing efi people.
> 
> On 12/16/16 at 02:33pm, Jean Delvare wrote:
> > On Fri, 16 Dec 2016 14:18:58 +0200, Andy Shevchenko wrote:
> > > On Fri, 2016-12-16 at 10:32 +0800, Dave Young wrote:
> > > > On 12/15/16 at 12:28pm, Jean Delvare wrote:
> > > > > I am no kexec expert but this confuses me. Shouldn't the second
> > > > > kernel have access to the EFI systab as the first kernel does? It
> > > > > includes many more pointers than just ACPI and DMI tables, and it
> > > > > would seem inconvenient to have to pass all these addresses
> > > > > individually explicitly.
> > > > 
> > > > Yes, in modern linux kernel, kexec has the support for EFI, I think it
> > > > should work naturally at least in x86_64.
> > > 
> > > Thanks for this good news!
> > > 
> > > Unfortunately Intel Galileo is 32-bit platform.
> > 
> > If it was done for X86_64 then maybe it can be generalized to X86?
> 
> For X86_64, we have a new way for efi runtime memmory mapping, in i386
> code it still use old ioremap way. It is impossible to use same way as
> the X86_64 since the virtual address space is limited.
> 
> But maybe for 32bit, kexec kernel can run in physical mode, but I'm not
> sure, I would suggest Andy to do a test first with efi=noruntime for
> kexec 2nd kernel.

Guys, it was quite a long no hear from you. As I told you the proposed work
around didn't help. Today I found that Microsoft Surface 3 also affected
by this.

Can we apply these patches for now until you will find better solution?

P.S. I may resend them rebased on recent vanilla.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
