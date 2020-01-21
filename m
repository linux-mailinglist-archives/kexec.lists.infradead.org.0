Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DDF14431F
	for <lists+kexec@lfdr.de>; Tue, 21 Jan 2020 18:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=runT8mAg45/t9ZWmmfSWJnjwWGchNJ1BDE6O2AvXf1Y=; b=ufSr09Eq+zO27/
	LB95io00nambg4WDxdkVCYLo5Qvv9E2LVXzKuZEJxh7abOAIuKVescSyR0OcyABMUi8gna9tDDucU
	gM5khTTDkDKKyvERPuw5lvGTr2uE0978+Df+aGtvMfRay1qQttv71vyFTmAINPiZX+xBxeWGcV6XL
	I1iVpE1+v6/IJ8c1SN1eT25SZULDqKeXF0g+4yW/3VEo1Is1pj6ZkBllogb+77eP409i5+lRKLl4h
	HuILS6wZ056TCLlpp+MDeWrv0fnZ4tCJ9x/dtxki3PZtwh38bPOwySbEqKd85GPmpabRbJQHpvWpx
	YFgolHznuT8io82WdJmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxGG-0004Gj-Ka; Tue, 21 Jan 2020 17:24:20 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxG3-00044X-OT
 for kexec@lists.infradead.org; Tue, 21 Jan 2020 17:24:12 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 09:24:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="250323755"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jan 2020 09:24:02 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1itxFz-0000qC-1l; Tue, 21 Jan 2020 19:24:03 +0200
Date: Tue, 21 Jan 2020 19:24:03 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
Message-ID: <20200121172403.GA32742@smile.fi.intel.com>
References: <20161216023213.GA4505@dhcp-128-65.nay.redhat.com>
 <1481890738.9552.70.camel@linux.intel.com>
 <20161216143330.69e9c8ee@endymion>
 <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
 <20200120121927.GJ32742@smile.fi.intel.com>
 <87a76i9ksr.fsf@x220.int.ebiederm.org>
 <20200120224204.4e5cc0df@endymion>
 <CAHp75Veb02m3tU9tzZe912ZmX5mdaYkZ90DD67FVERJS15VsXw@mail.gmail.com>
 <20200121100359.6125498c@endymion>
 <87zheg93io.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zheg93io.fsf@x220.int.ebiederm.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_092407_881288_221BE9D0 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Matt Fleming <matt@codeblueprint.co.uk>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dave Young <dyoung@redhat.com>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 10:29:35AM -0600, Eric W. Biederman wrote:
> Jean Delvare <jdelvare@suse.de> writes:
> 
> > On Mon, 20 Jan 2020 23:55:43 +0200, Andy Shevchenko wrote:
> >> On Mon, Jan 20, 2020 at 11:44 PM Jean Delvare <jdelvare@suse.de> wrote:
> >> >
> >> > On Mon, 20 Jan 2020 10:04:04 -0600, Eric W. Biederman wrote:  
> >> > > Second.  I looked at your test results and they don't directly make
> >> > > sense.  dmidecode bypasses the kernel completely or it did last time
> >> > > I looked so I don't know why you would be using that to test if
> >> > > something in the kernel is working.  
> >> >
> >> > That must have been long ago. A recent version of dmidecode (>= 3.0)
> >> > running on a recent kernel  
> >> > (>= d7f96f97c4031fa4ffdb7801f9aae23e96170a6f, v4.2) will read the DMI  
> >> > data from /sys/firmware/dmi/tables, so it is very much relying on the
> >> > kernel doing the right thing. If not, it will still try to fallback to
> >> > reading from /dev/mem directly on certain architectures. You can force
> >> > that old method with --no-sysfs.
> >> >
> >> > Hope that helps,  
> >> 
> >> I don't understand how it possible can help for in-kernel code, like
> >> DMI quirks in a drivers.
> >
> > OK, just ignore me then, probably I misunderstood the point made by
> > Eric.
> 
> No.  I just haven't dived into this area of code in a long time.
> 
> It seems a little indirect to use dmidecode as the test to see if the
> kernel has the pointer to the dmitables, but with the knowledge you
> provided it seems like a perfectly valid test.

In any case that doesn't work. See my response to Ard.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
