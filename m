Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDEE1F06CE
	for <lists+kexec@lfdr.de>; Sat,  6 Jun 2020 15:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tc5lMk9t3H1PhjrFm0NtvCIBrDXcJ6e0EXEhxhtdBic=; b=i3eZSk6po0PfNl
	GDJYDUH8pT3S2mhcCuT7u7Zn0tinLAsuZn2BaHKwF2NqBRbngapF5qnjpoHwgjn4pD0wW2FLQNu1c
	yLLwlLFoAXzGcl/g11oTTt/BXJd+QwDjo2koKplj8ZdlniJijWCdTHhOrJlEZBJsX2cnacwp0D4pI
	vGm/dQv3J3Z/UM+PatLO8GhnzfhCBbDFpY4rQx7hIpkmLWE80oWwy3IH6pB1X7jrNGmj/1CMJFxqf
	+b5AEIe+CSaypNniHUF5ARxH12joJ/Tx9hZRpwU2R+xqvfAYk/tlRuGWapW/D43QNsLiEPk8MQLek
	v8liKuHsGY/62QKKlC+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYy0-0006Hl-A0; Sat, 06 Jun 2020 13:34:32 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhYxw-0006Fv-Ts
 for kexec@lists.infradead.org; Sat, 06 Jun 2020 13:34:30 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 11061E49C2EAA545ABB5
 for <kexec@lists.infradead.org>; Sat,  6 Jun 2020 21:34:01 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.90) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Sat, 6 Jun 2020
 21:33:59 +0800
Subject: Re: [PATCH v3] arm64: kdump: add another DT property to crash dump
 kernel's dtb
To: Simon Horman <horms@verge.net.au>
References: <20200521083257.53415-1-chenzhou10@huawei.com>
 <20200606131933.GA24391@vergenet.net>
From: chenzhou <chenzhou10@huawei.com>
Message-ID: <d6d2bd25-19f8-7ccf-19e6-e29dd700f64d@huawei.com>
Date: Sat, 6 Jun 2020 21:33:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200606131933.GA24391@vergenet.net>
X-Originating-IP: [10.166.213.90]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_063429_143544_9BE64B9D 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 2020/6/6 21:19, Simon Horman wrote:
> On Thu, May 21, 2020 at 04:32:57PM +0800, Chen Zhou wrote:
>> Currently, there is only one crash kernel region on arm64, we add
>> another region "crash kernel low" used for crash dump kernel devices.
>>
>> To do this, we add DT property "linux,low-memory-range" to crash
>> dump kernel's dtb to pass the low region.
>>
>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>> ---
>> For "support reserving crashkernel above 4G on arm64 kdump", we need
>> to modify the kexec-tools.
>>
>> Changes since [v2]:
>> - Rebase to latest kexec-tools code.
>>
>> Changes since [v1]:
>> - Add another DT property "linux,low-memory-range" to crash dump kernel's
>> dtb to pass the low region instead of reusing "linux,usable-memory-range".
>>
>> [1]: http://lists.infradead.org/pipermail/kexec/2019-April/022792.html
>> [2]: http://lists.infradead.org/pipermail/kexec/2019-August/023569.html
> Thanks.
>
> I think it would be appropriate for me to apply this change to
> kexec-tools once the corresponding changes have been accepted to
> the kernel.
>
> Please repost when that is the case.
ok.

Thanks,
Chen Zhou
>
> .
>



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
