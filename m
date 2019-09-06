Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A116DAC011
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 21:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5svqtbRNN1xGLcbUiABEMb6+2tamMcGPA/79+PDiUQ=; b=n9O77WYDnJNnAr
	8xthJCODjjBKlI+yY2K40rJP52whd02hwmmerRa7Jvx0VMULc30nXLB7YJoLC5cJofAcgOLD1QkYh
	y+Ywm52HpZFyyVMWdirzYB65ZwtAgPpB5ntIKGL4tmuWCCXAJtipc9OS3qyfvrUw1jlkX9KhbOqqB
	27kcwwCWiOVHyC/pB4/Lcip4YngBiakJJBd+Zj90StmGDYIwXOSUVtoWy7pSbPjGL4k0Uoab4DWok
	7G+b1ggZ6DPX0NzO7n39Q/Hi/ksarvSOOPCUfg41mxZ2KP+eMFFNOmrYW17Hk1csng7MGvonJiyGz
	qPeSCakMnc7vYK35uasA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JVR-0005sJ-4Y; Fri, 06 Sep 2019 19:02:49 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JVN-0005cq-Hs
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 19:02:46 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 12:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="384313381"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2019 12:00:41 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1i6JTM-0004KJ-BX; Fri, 06 Sep 2019 22:00:40 +0300
Date: Fri, 6 Sep 2019 22:00:40 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
Message-ID: <20190906190040.GA16211@smile.fi.intel.com>
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
X-CRM114-CacheID: sfid-20190906_120245_635933_9FEC8984 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Sorry for a delay.
Eventually I found time to check this.

Unfortunately the efi=noruntime didn't help:

# uname -a
Linux buildroot 5.3.0-rc7+ #17 Thu Sep 5 16:08:22 EEST 2019 i586 GNU/Linux
# dmidecode
# dmidecode 4.2
Scanning /dev/mem for entry point.
# No SMBIOS nor DMI entry point found, sorry.
#
# cat /proc/cmdline
... ignore_loglevel efi=noruntime earlycon=efifb acpi_rsdp=0xf01e014

So, I am all ears to anything else to try.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
