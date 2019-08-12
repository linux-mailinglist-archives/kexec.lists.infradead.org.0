Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8CB89892
	for <lists+kexec@lfdr.de>; Mon, 12 Aug 2019 10:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DsZSKH2QZM6QbcDjH12w05R2ft+2WLmAISyqZ1o0A2I=; b=jUXVHB0pi93/XbKI9NURerZnZ
	+IYVhO8XLT7CdmXfUYtq6iRIVDu/nci91HvuzBtMnYJ7mgA41gqKWXHWomJo1ZpfFoHPAoYcVvxmv
	cXqy/W/H59NLTEHY3TU838AppckLOZkFxKSZaWzwmmZfDZWt18/ly14rWId2IYQTJQ4+A+1/m/Z3a
	YjURdcV6mu2wByvkhc9Oe8hst5ScdAzr6PenbPMn5wQq+nn7/6fQkyJ4541w0oBY6/zy6y4Nk3/1N
	W8x7BbMUVJwbsWygZ4y/ILE2idKQaPzMMf6MWHJ0Xsy/Vv+PzaCSla452Fhc7BhuzHhzcXtZIj9y3
	VX2E/LWGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5WF-0006Rb-HL; Mon, 12 Aug 2019 08:17:31 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx5WB-0006R9-Kp
 for kexec@lists.infradead.org; Mon, 12 Aug 2019 08:17:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 01:17:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,376,1559545200"; d="scan'208";a="193907093"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
 by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2019 01:17:25 -0700
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
From: Rong Chen <rong.a.chen@intel.com>
To: Borislav Petkov <bp@suse.de>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
 <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
 <20190805130221.GA18887@zn.tnic> <20190805133210.GB18887@zn.tnic>
 <c83ef145-83ef-d1b8-8a41-4957f20039e8@intel.com>
Message-ID: <669b2392-e9ce-76f7-638c-4b32878c53b5@intel.com>
Date: Mon, 12 Aug 2019 16:17:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c83ef145-83ef-d1b8-8a41-4957f20039e8@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_011727_689851_5A3E4E0B 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: x86@kernel.org, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, lkp@01.org, Chao Fan <fanc.fnst@cn.fujitsu.com>,
 kexec@lists.infradead.org, Jun'ichi Nomura <j-nomura@ce.jp.nec.com>,
 Dave Young <dyoung@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 8/12/19 3:43 PM, Rong Chen wrote:
> Hi,
>
> On 8/5/19 9:32 PM, Borislav Petkov wrote:
>> On Mon, Aug 05, 2019 at 03:02:21PM +0200, Borislav Petkov wrote:
>>> On Mon, Aug 05, 2019 at 07:49:54PM +0800, Chen, Rong A wrote:
>>>> We use the following command to boot a new kernel:
>>>> kexec --noefi -l 
>>>> /opt/rootfs/tmp/pkg/linux/x86_64-rhel-7.6/gcc-7/5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24/vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a
>>>> --initrd=/opt/rootfs/tmp/initrd-concatenated
>>> And this "concatenated" initrd, how do you generate that?
>> And the "-l" thing is just the kexec load command to load the second
>> kernel. I need you to give me a step-by-step, exact command-by-command
>> list of things you do to trigger.
>>
>> Also, pls send me dmesg from the first kernel. Privately is fine too.
>>
>> Thx.
>
> Sorry for the delay, I've found a machine which can reproduce the 
> issue at last.
>
> root@lkp-bdw-de1 ~# kexec --version
> kexec-tools 2.0.14
>
> kexec reboots the system without "-e option"
> root@lkp-bdw-de1 ~# kexec --noefi 
> vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a --initrd final_initrd-borrow 
> --reuse-cmdline
> Unknown type (Reserved) while parsing /sys/firmware/memmap/7/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/13/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/11/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/1/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/4/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/12/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/2/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/9/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Connection to lkp-bdw-de1 closed by remote host.
> Connection to lkp-bdw-de1 closed.
>
> The behavior is as usual if using "nokaslr"
> root@lkp-bdw-de1 ~# kexec -l vmlinuz-5.2.0-rc3-00004-g5b51ae969e3d8a 
> --initrd final_initrd-borrow --reuse-cmdline --append "nokaslr"
> Unknown type (Reserved) while parsing /sys/firmware/memmap/7/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/13/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/11/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/1/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/4/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/12/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/2/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> Unknown type (Reserved) while parsing /sys/firmware/memmap/9/type. 
> Please report this as bug. Using RANGE_RESERVED now.
> root@lkp-bdw-de1 ~# kexec -e
>
> And please find the pre-dmesg in the attachment.

I've uploaded the vmlinuz and initrd files to 
https://download.01.org/0day-ci/lkp-qemu/fbc/5b51ae969e3d8ab0134ee3c98a769ad6d2cc2e24

Best Regards,
Rong Chen

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
