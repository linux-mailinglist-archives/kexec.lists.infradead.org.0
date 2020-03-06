Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9A017C4ED
	for <lists+kexec@lfdr.de>; Fri,  6 Mar 2020 18:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KheBUQo5/RWe7ZQZdX0eXvZxByHZH3g8gaG/JpFWoE=; b=bQEB8agG21/rV+
	wk3gZBanXU6ojNZmVJgbEo9BhEvz7pmhY36Os9mh/jfaLOFwH9h58bwYuOqCBukfjIfTeFdgHK9ym
	L0aSs+U4WSFM9PbUwXYYy0TyS24pD/GeNzDpZvV1ioWIGvPvGHjUINspLmpDXTPr5fUCScWmRv9rK
	lwSnBWOBmsHEyD2osJywtrLkSvyK/XOWSaUZVoQ/3CCF+I+7T5nbQkQ6Df1BgWv5G1wcn99pWwGMp
	0Tr97Etx4GuLzs/QmnHPtRTE91IiiiuG1RT6QRoFmwbJU9eWQDXXl+vtvSq57LxhAHjl53g0MAwAr
	ZT7STxg637kaR04tNZKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAH9j-000853-JX; Fri, 06 Mar 2020 17:53:03 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAH9f-00084j-PM
 for kexec@lists.infradead.org; Fri, 06 Mar 2020 17:53:01 +0000
Received: from mail-qk1-f200.google.com ([209.85.222.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <gpiccoli@canonical.com>) id 1jAH9d-0005te-UM
 for kexec@lists.infradead.org; Fri, 06 Mar 2020 17:52:58 +0000
Received: by mail-qk1-f200.google.com with SMTP id e13so2001507qkm.23
 for <kexec@lists.infradead.org>; Fri, 06 Mar 2020 09:52:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HGyDz3W2uu/GNXXJNdhvcreLHo1cTuw4ostVd5XjkXk=;
 b=XageK4XUxAs3H5UzN/kOuNc2LwlQCN3rQXSFaf+hAkvnUiraHaXBm8MWO77vWoIYSJ
 bsCjtndTm8iBAI0rVf14Rv0WgbF5J9cYnSTtwUp3UBnGaF1jJxtroGrPx/WJFwG8HX6q
 3Bvnpz+bhgXbtCOdn1x1rEcWnXus61KlftQ1qnQ/3USB6RuHMUYc+z7z6XTU6xRRlLyy
 jQwgcq3L8uy6S6Z37AN21WItsJYpSDUt5dyw3vxGvd+XxzWlCbtTpOhOV3hSNUU2ddto
 UMTrFlPG8IOBZzhcMuBjG+oPxLJgpMgDAGyak9UnVanHRDqwZBPSLg0AbF7AylbX+4Ly
 DSJA==
X-Gm-Message-State: ANhLgQ2WOsTLG9ow9FFagsuUSKVKA1EDiNrwZWxHHQuBEASbJCAPWPUI
 4A6T/FuSrV8F1Z90WMNkltWpw4GSj+rRQVwp86sjMYepLckpKyT9WvkF3Peg7INXzv7k0SDSebc
 dSMirzl4HfvjNdalEGsHLsvg8YX1BCzuPJ9+qCg==
X-Received: by 2002:ac8:6c6:: with SMTP id j6mr4064409qth.231.1583517177070;
 Fri, 06 Mar 2020 09:52:57 -0800 (PST)
X-Google-Smtp-Source: ADFU+vt4pSoBxtvO4xLpvib8EqH338Le2mbIUhQ3A9R5BFS0yIEDgxoldiSDZaSoCRgZ4m5Uxh+ZDA==
X-Received: by 2002:ac8:6c6:: with SMTP id j6mr4064393qth.231.1583517176761;
 Fri, 06 Mar 2020 09:52:56 -0800 (PST)
Received: from [192.168.1.75] ([189.110.150.31])
 by smtp.gmail.com with ESMTPSA id u18sm3541161qtv.96.2020.03.06.09.52.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Mar 2020 09:52:55 -0800 (PST)
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
To: David Woodhouse <dwmw2@infradead.org>,
 kexec mailing list <kexec@lists.infradead.org>
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
 <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
 <CACi5LpNJVw_POqvmUD2fHWJkS=3bK4PzWCD_9Hs_K90aQ4gczw@mail.gmail.com>
 <7d76b7cf-8606-5fa6-e166-5de785bd3012@canonical.com>
 <5f338241-8842-18d0-21df-cfeb0826d725@canonical.com>
 <bec06a39472b31e0bb343dfb762ae827fb305f66.camel@infradead.org>
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
Message-ID: <e21d3f34-afc3-8f3b-9f40-574aa5c00495@canonical.com>
Date: Fri, 6 Mar 2020 14:52:51 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bec06a39472b31e0bb343dfb762ae827fb305f66.camel@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_095259_961998_CC1BC3A9 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
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
Cc: pedro.principeza@canonical.com, Baoquan He <bhe@redhat.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Gavin Guo <gavin.guo@canonical.com>,
 Guowen Shan <gshan@redhat.com>, Dave Young <dyoung@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/03/2020 10:18, David Woodhouse wrote:
> Can you give me the instance ID and specific times, please?
> 

Sure David, thanks for jumping in! The instance id is
i-04c92cf5be3064347; the time range for the good test (based on
kernel.log) was from "Mar 4 20:15:19 UTC" to approximately "Mar 4
21:08:05 UTC"; after that, I stopped/restarted the instance and the bad
testing ran from "Mar 5 19:49:54 UTC" to approximately "Mar 5 19:52:24 UTC".

I made a mistake by saying the tests were minutes apart - as we can see,
it was almost a day between them, apologies.

Cheers,


Guilherme

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
