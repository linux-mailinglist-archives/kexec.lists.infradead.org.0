Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94DE1C6FF6
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 14:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JCrA3hDnwtUS9ZzgXPNWcCteevmZbW3iD/x4KLmy/U8=; b=u8qPaCJO+A7WkmmKF4VXcp8g3
	ArbBMyhPHGb6VGD0G4fQiPaH7akUZlPu+g4+lMn8ZLBybOhpB6xJowSgL8rjd8JJSfYC/RBwG02+R
	GDc8K3jCkqmQzBgIs+9K/oStQ+lsYUzt+7y9xFAkOHUkY8+ubpTP00R2CD3RKN8eoTW3GuEi7n2+n
	5K2zabsJUzGA8UFH/PLyuuI53uSb1FzpYMMkfsG0fm+gHsc2ZEba/6ClFxTLMZspBMAGltTHWx4go
	WWyUVYkCzWa5XNG3iFu5hsma0GH1jv0cDB3YBFDelarq0owIu6QoJOpYv4ivIpnCXmdhTJm91A+iU
	H2Nx9tw9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIpw-0008VA-AK; Wed, 06 May 2020 12:07:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIpt-0008U1-3t; Wed, 06 May 2020 12:07:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 291481FB;
 Wed,  6 May 2020 05:07:36 -0700 (PDT)
Received: from [10.57.31.214] (unknown [10.57.31.214])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA1EF3F71F;
 Wed,  6 May 2020 05:07:32 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] Documentation/vmcoreinfo: Add documentation for
 'KERNELPACMASK'
To: Will Deacon <will@kernel.org>
References: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
 <1587968702-19996-2-git-send-email-amit.kachhap@arm.com>
 <20200504173440.GE1833@willie-the-truck>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <c5b441e9-8dd4-d2e7-20bb-b934b68dad9a@arm.com>
Date: Wed, 6 May 2020 17:37:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200504173440.GE1833@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_050737_194465_0FD35A5D 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Baoquan He <bhe@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Dave Young <dyoung@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

On 5/4/20 11:04 PM, Will Deacon wrote:
> On Mon, Apr 27, 2020 at 11:55:02AM +0530, Amit Daniel Kachhap wrote:
>> Add documentation for KERNELPACMASK variable being added to the vmcoreinfo.
>>
>> It indicates the PAC bits mask information of signed kernel pointers if
>> Armv8.3-A Pointer Authentication feature is present.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Dave Young <dyoung@redhat.com>
>> Cc: Baoquan He <bhe@redhat.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>>   Documentation/admin-guide/kdump/vmcoreinfo.rst | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
>> index 007a6b8..5cc3ee6 100644
>> --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
>> +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
>> @@ -393,6 +393,12 @@ KERNELOFFSET
>>   The kernel randomization offset. Used to compute the page offset. If
>>   KASLR is disabled, this value is zero.
>>   
>> +KERNELPACMASK
>> +-------------
>> +
>> +Indicates the PAC bits mask information if Pointer Authentication is
>> +enabled and address authentication feature is present.
> 
> This is a bit cryptic. How about:
> 
>    The mask to extract the Pointer Authentication Code from a kernel virtual
>    address.

Ok sure. I will update like this in the v3 version.

Cheers,
Amit Daniel
> 
> Will
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
