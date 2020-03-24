Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6806F190DC4
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 13:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPXfR5FljQzI6CGdTMOoGEL5a9V376QLTBWoegDkvoM=; b=E60NfaqtDSBm3O
	Uter0GDSyu8mPrNmx6q6JFAGa8Uj25K5AVJzCNwIdT8z80kzPCVBtgV/XNy1VEzYJ7uWxS7c9MJtb
	u/yMKHY3tWMnaYrE61NlHETilWgb+v9AV8598nb2baI3f45eftBC7HqfyH/9+AGTbVJzfRD/rEmcn
	ukJ24cr+LQkBqH6+h7YQWmnSaxyh7IiCgXh+EWKwpVXcWKuILOOt9Vuuwx/v1uHdxEmtdhYgkKf47
	Eh5iT/hhkM/cqfUJ93pcm3GFIpphDBPUJCGhOrv0LfzhoEvdjnwJvsW+qhlUwoaj1PHJKxkUoxbb8
	hdMWaf5II1ua4dpUwdiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGioz-0006QA-2K; Tue, 24 Mar 2020 12:38:17 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiov-0006PR-R6
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 12:38:15 +0000
Received: from mail-qt1-f197.google.com ([209.85.160.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <gpiccoli@canonical.com>) id 1jGiot-0001k0-IP
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 12:38:11 +0000
Received: by mail-qt1-f197.google.com with SMTP id v16so1064748qtj.1
 for <kexec@lists.infradead.org>; Tue, 24 Mar 2020 05:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=/usf07u77OnQCdY0BK0w6FbiHje3KUi4p9IaHdi5UGc=;
 b=m3eJw55JjB95B5KXtGNk7qP44aVFgMwtGU1Bba04EWPXMq5MFz/01YWQbhxTFnJ0ko
 gZk/zmFn144hoRlgMw21Ive97o2SbeTtik+xdBaXTQkLDqkYKqDoW+/8imYai1tIu/aM
 CQwzXP1pfUiciRcpC7/rVrWhp/gckvlCCuy2SbqeJbxYU3CclVfYzyhK7Mf0YnZUKcxO
 Cn5K2xZ2fz9lEwBtKaArkrF7q3yA8qunSAWnTSHEpRS+O1iQ/onifZySOjgnRMbDCRgM
 +64vk+z6MhAoIypKMLVA460zTukHfxCYH88F67ANTQzjnNPOEwDSWqxLjOnFjXWjdU4V
 KvkQ==
X-Gm-Message-State: ANhLgQ2paqPWabgQkQzy4MFOVZKNXe0yKdrWn+mRcn27dExQMdWCWqBY
 911M0Zh1aWlQemXWeFiuD75m14UlwAqJ6VkUe25Bfv1hUZxDJCzcgJahC+DYta/IVMns7iP1Y0G
 GzI0nOcfeLfXZTzYd8Ug8QI8hMGk2ixDwrTwq8Q==
X-Received: by 2002:a05:620a:1256:: with SMTP id
 a22mr22863947qkl.439.1585053490726; 
 Tue, 24 Mar 2020 05:38:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvycAlNnuUyjdo36359QD01xhLgtVWBL2Secf2f86s86QlU7syc4eCr8CB0GGN0e5xih4G0YA==
X-Received: by 2002:a05:620a:1256:: with SMTP id
 a22mr22863923qkl.439.1585053490451; 
 Tue, 24 Mar 2020 05:38:10 -0700 (PDT)
Received: from [192.168.1.75] (189-47-87-73.dsl.telesp.net.br. [189.47.87.73])
 by smtp.gmail.com with ESMTPSA id
 69sm13019567qki.131.2020.03.24.05.38.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 05:38:09 -0700 (PDT)
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
 <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
 <CACi5LpNJVw_POqvmUD2fHWJkS=3bK4PzWCD_9Hs_K90aQ4gczw@mail.gmail.com>
 <7d76b7cf-8606-5fa6-e166-5de785bd3012@canonical.com>
 <5f338241-8842-18d0-21df-cfeb0826d725@canonical.com>
 <bec06a39472b31e0bb343dfb762ae827fb305f66.camel@infradead.org>
 <e21d3f34-afc3-8f3b-9f40-574aa5c00495@canonical.com>
 <2080da6e-770b-a69e-59b2-0f23813188db@canonical.com>
 <CACi5LpMkEnerJcL6r+-0__6OM8Dq_uFhtobFYJTEif6NX_guFg@mail.gmail.com>
 <2e1ed40e-7aaa-239f-8b1a-23dd7fa100f5@canonical.com>
 <CACi5LpPM6JNsTRN-GMusPe6Dht2yRoXV6X8ptVjmU2t98LXYHA@mail.gmail.com>
From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gpiccoli@canonical.com; prefer-encrypt=mutual; keydata=
 mQENBFpVBxcBCADPNKmu2iNKLepiv8+Ssx7+fVR8lrL7cvakMNFPXsXk+f0Bgq9NazNKWJIn
 Qxpa1iEWTZcLS8ikjatHMECJJqWlt2YcjU5MGbH1mZh+bT3RxrJRhxONz5e5YILyNp7jX+Vh
 30rhj3J0vdrlIhPS8/bAt5tvTb3ceWEic9mWZMsosPavsKVcLIO6iZFlzXVu2WJ9cov8eQM/
 irIgzvmFEcRyiQ4K+XUhuA0ccGwgvoJv4/GWVPJFHfMX9+dat0Ev8HQEbN/mko/bUS4Wprdv
 7HR5tP9efSLucnsVzay0O6niZ61e5c97oUa9bdqHyApkCnGgKCpg7OZqLMM9Y3EcdMIJABEB
 AAG0LUd1aWxoZXJtZSBHLiBQaWNjb2xpIDxncGljY29saUBjYW5vbmljYWwuY29tPokBNwQT
 AQgAIQUCWmClvQIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDOR5EF9K/7Gza3B/9d
 5yczvEwvlh6ksYq+juyuElLvNwMFuyMPsvMfP38UslU8S3lf+ETukN1S8XVdeq9yscwtsRW/
 4YoUwHinJGRovqy8gFlm3SAtjfdqysgJqUJwBmOtcsHkmvFXJmPPGVoH9rMCUr9s6VDPox8f
 q2W5M7XE9YpsfchS/0fMn+DenhQpV3W6pbLtuDvH/81GKrhxO8whSEkByZbbc+mqRhUSTdN3
 iMpRL0sULKPVYbVMbQEAnfJJ1LDkPqlTikAgt3peP7AaSpGs1e3pFzSEEW1VD2jIUmmDku0D
 LmTHRl4t9KpbU/H2/OPZkrm7809QovJGRAxjLLPcYOAP7DUeltveuQENBFpVBxcBCADbxD6J
 aNw/KgiSsbx5Sv8nNqO1ObTjhDR1wJw+02Bar9DGuFvx5/qs3ArSZkl8qX0X9Vhptk8rYnkn
 pfcrtPBYLoux8zmrGPA5vRgK2ItvSc0WN31YR/6nqnMfeC4CumFa/yLl26uzHJa5RYYQ47jg
 kZPehpc7IqEQ5IKy6cCKjgAkuvM1rDP1kWQ9noVhTUFr2SYVTT/WBHqUWorjhu57/OREo+Tl
 nxI1KrnmW0DbF52tYoHLt85dK10HQrV35OEFXuz0QPSNrYJT0CZHpUprkUxrupDgkM+2F5LI
 bIcaIQ4uDMWRyHpDbczQtmTke0x41AeIND3GUc+PQ4hWGp9XABEBAAGJAR8EGAEIAAkFAlpV
 BxcCGwwACgkQzkeRBfSv+xv1wwgAj39/45O3eHN5pK0XMyiRF4ihH9p1+8JVfBoSQw7AJ6oU
 1Hoa+sZnlag/l2GTjC8dfEGNoZd3aRxqfkTrpu2TcfT6jIAsxGjnu+fUCoRNZzmjvRziw3T8
 egSPz+GbNXrTXB8g/nc9mqHPPprOiVHDSK8aGoBqkQAPZDjUtRwVx112wtaQwArT2+bDbb/Y
 Yh6gTrYoRYHo6FuQl5YsHop/fmTahpTx11IMjuh6IJQ+lvdpdfYJ6hmAZ9kiVszDF6pGFVkY
 kHWtnE2Aa5qkxnA2HoFpqFifNWn5TyvJFpyqwVhVI8XYtXyVHub/WbXLWQwSJA4OHmqU8gDl
 X18zwLgdiQ==
Message-ID: <b300c27f-1a5c-5b68-45eb-78d54808d1a1@canonical.com>
Date: Tue, 24 Mar 2020 09:38:04 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACi5LpPM6JNsTRN-GMusPe6Dht2yRoXV6X8ptVjmU2t98LXYHA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_053814_009370_33986E34 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
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
Cc: Guowen Shan <gshan@redhat.com>, Baoquan He <bhe@redhat.com>,
 Dave Young <dyoung@redhat.com>, kexec mailing list <kexec@lists.infradead.org>,
 Gavin Guo <gavin.guo@canonical.com>, pedro.principeza@canonical.com,
 David Woodhouse <dwmw2@infradead.org>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 24/03/2020 02:25, Bhupesh Sharma wrote:
> Hi Guilherme,
> [...] 
>> Great! If you need me to sign-up in Bugzilla, I can do it. Just let me
>> know the steps and I'd be glad in doing that.
> 
> Yes, please. I checked internally. If you can sign-up for Bugzilla, I
> can directly add you to the Cc field of the Bugzilla work-item.

Hi Bhupesh! Thanks, I've just signed-in, my username is gpiccoli and
email is guilherme  [(AT)]  gpiccoli  [(DOT)]  net .


> [...]
> No problem. The good news is that two runs of approx. ~200 runs of
> nested kexec reboots worked even with RHEL/Fedora + your patch on the
> aws t3 instance for me.
> 
> So, this looks like a real good patch to have upstream. Thanks a lot
> for sharing and working on it.
> 
> I will go ahead and add my Tested-by for the upstream patch as well.
> 
> Thanks for all your help,
> Bhupesh
> 

This is great news, thanks for testing! Feel free to add your Tested-By
on netdev list. I'm glad we could solve the issue, nice collaboration!
Cheers,


Guilherme

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
