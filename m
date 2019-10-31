Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF40CEAD19
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 11:08:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTXiXNKvcpUqot+xk1rtPV009febSqMw4CtxP4FD+YA=; b=MgSA197HejkNyI
	Kl3l5DWdWI8CVkuYaRVM8eQxemCb8zyE1qHVTT3beQfFouUwsAldCKO1KWxhnTj6d+kcvPf33nong
	6s8qzZ7GuNEMQIJdfwfq7qvtmdS76fF+p6pZJrBf+DmpGL57x58eiqB5f6h3epLGGvy0+Zm7DW5Xc
	eP8kY0cl+Zk8BxeWnO+RVL/S1Ncd6MhURGn5KX4Fhms+5oKJ6SV4gXE8jDVdRQJ8655Tx1GfRw5Lp
	KWKJkXorAWTeg7Mw1QJptShTl5ywmpDqZwWioyuRIAfdL0F4usnXS5mk4XIaABEynrbKMBLgB5/+P
	OTMh5TIeDpyxVdJ94Gvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7N6-0003Wd-Hc; Thu, 31 Oct 2019 10:08:04 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7N2-0003Ug-RG
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 10:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572516479;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gc/OlmBktQXoJ2zKzgI75ZpNAflSdHScjTfPoKL/jyc=;
 b=ZfMP7u66uCCRMs5RwXG9qgZ00gPLfWAUfK0hmtvNGoj3S+bkM/y+qIH4UncbdQHmnkOLFk
 /4NFCWfAKiobpPGBK0VwfmAQBwYVHPo9TqWWQaMmv0mAUqa2q0dTzBqAwOuEhGYYjS7vGI
 1YBU8lvPeiq7kwm0c80BwCCfCIXhwjs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-154-g1mLBRwrOBehoPEaGY2PwA-1; Thu, 31 Oct 2019 06:07:55 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D12D1005500;
 Thu, 31 Oct 2019 10:07:54 +0000 (UTC)
Received: from lacos-laptop-7.usersys.redhat.com (ovpn-117-6.ams2.redhat.com
 [10.36.117.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 087D4A7EA;
 Thu, 31 Oct 2019 10:07:52 +0000 (UTC)
Subject: Re: [edk2-devel] How /sys/firmware/fdt getting created
To: devel@edk2.groups.io, prabhakar.pkin@gmail.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <ae74bb79-a68e-a319-f61c-5b93fd70ae59@gmail.com>
 <CAKv+Gu8oUfSfMLW17QOwBCrrn+3AggHND6b0KZWfB=Npo9d8Hw@mail.gmail.com>
 <CAJ2QiJLOE8D_Cf8ysRzv2oJ=+Bv1scpQCUX0yK=_zxjm6Rr6ow@mail.gmail.com>
 <CAKv+Gu981sk=GifDZbB-c-QYYP84RweHSmPQFkLPis1UDgrhAg@mail.gmail.com>
 <CAJ2QiJJ4KKYGiEU2P_wuY3E0Q-FJm4LiNu+1jbOJoO84W_FDJw@mail.gmail.com>
From: Laszlo Ersek <lersek@redhat.com>
Message-ID: <2b268378-d9be-adb5-f139-a0ca8dab4329@redhat.com>
Date: Thu, 31 Oct 2019 11:07:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAJ2QiJJ4KKYGiEU2P_wuY3E0Q-FJm4LiNu+1jbOJoO84W_FDJw@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: g1mLBRwrOBehoPEaGY2PwA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_030800_988417_A477C26A 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: naresh.bhat@linaro.org, kexec@lists.infradead.org,
 Leif Lindholm <leif.lindholm@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

+Leif, comment at bottom

On 10/30/19 09:16, Prabhakar Kushwaha wrote:
> On Wed, Oct 30, 2019 at 1:14 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
>>
>> On Wed, 30 Oct 2019 at 08:36, Prabhakar Kushwaha
>> <prabhakar.pkin@gmail.com> wrote:
>>>
>>> On Wed, Oct 30, 2019 at 12:43 PM Ard Biesheuvel
>>> <ard.biesheuvel@linaro.org> wrote:
>>>>
>>>> On Tue, 29 Oct 2019 at 18:17, Prabhakar Kushwaha
>>>> <prabhakar.pkin@gmail.com> wrote:
>>>>>
>>>>> Hi All,
>>>>>
>>>>> I am working on Ubuntu-18.04 with UEFI on ARM64(64 bit) platform. The
>>>>> UEFI used is having ACPI tables.
>>>>>
>>>>> I am trying to understand where and how /sys/firmware/fdt is getting
>>>>> created. is it created by UEFI or grub and passed to Linux?
>>>>>
>>>>
>>>> Neither. It is created by Linux itself.
>>>>
>>>>
>>>>
>>>
>>> Thanks Ard,
>>>
>>> Can you please point me the code where it is getting created.
>>> I want to add below in /sys/firmware/fdt.
>>>
>>> #size-cells = <0x02>;
>>> #address-cells = <0x02>;
>>>
>>
>> Actually, in your case it is GRUB not the kernel that creates the FDT.
>> It does this to pass the initrd information.
>>
>> So if you want to add these properties, you should add them there.
>>
>> Can you explain why doing this is necessary?
> 
> I am trying to test kexec -p (kdump feature) on CentOS-release
> 7.7.1908 and Ubuntu-18.04 distributions.
> 
>  "kexec -p" command show error on Ubuntu. While no error on CentOS
> 
> CentOS:
> $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname
> -r`.img --reuse-cmdline
> $    ==> No error
> 
> Ubuntu
> $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initrd.img-`uname
> -r` --reuse-cmdline
> $ kexec: elfcorehdr doesn't fit cells-size.
> $ kexec: setup_2nd_dtb failed.
> $ kexec: load failed.
> $ Cannot load /boot/vmlinuz-5.4.0-rc4+
> 
> Note: Both CentOS and Ubuntu has Linux-5.4-rc4 tag.
> 
> When i debugged further reason for Ubuntu error is due to
> address-cells and size-cells as "1"
> log from kexec tool :-
> load_crashdump_segments: elfcorehdr 0x7f7cbfc000-0x7f7cbff7ff
> read_1st_dtb: found name =dtb_sys  /sys/firmware/fdt
> get_cells_size: #address-cells:1 #size-cells:1
> 
> On CentOS both values are "2".
> log from kexec tool :-
> load_crashdump_segments: elfcorehdr 0xbf98bf0000-0xbf98bf33ff
> read_1st_dtb: found nmae=dtb_sys /sys/firmware/fdt
> get_cells_size: #address-cells:2 #size-cells:2
> 
> Note: Kexec tool read values from /sys/firmware/fdt.
> 
> I am trying to figure out why 2 distributions showing different values.

http://git.savannah.gnu.org/cgit/grub.git/commit/?id=347210a5d5ce655b95315f320faa515afb723c11

Ubuntu probably ships a grub version that lacks this commit.

(The commit was first released as part of upstream grub-2.04. I have no
idea what version of grub is shipped in the CentOS distro you mention
above -- it could be based upon upstream 2.04, or the upstream patch may
have been backported to CentOS.)

Thanks
Laszlo


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
