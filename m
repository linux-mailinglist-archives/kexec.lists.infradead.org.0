Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AB6823B2
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 19:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gp7I5S/BJ+QvN1CZ3drvPDfzetjp9ueAk563AV1Phx4=; b=S2a9f0RFpxjA1X
	ESEzjxImbs8b58UbAE048GmMRcCWVOIZKNQAbLi5D20vBartqZ5a0db9kkFUFU5b4GynMs4UQ7Awz
	jdPAcfkUCUrM2F745NL+Ru4QOjOJnTtIRyqfUKM6XsfC6FKpnwxJTpV2C5HGk+5g24immXCadvoTh
	42DCfImFHoSpcQsQYYTeY0956zALrhxC6RqErT+LsHYKDaF1f371YE3j9m7lK0qIKCmQZuR3fNjLE
	z+BeY8zMIvMCThTAJHmA231U6mt+KVKX4UOJ0OYc2xfAkoc1pVcNE8M4fB4u22/NgIXVJQEFK/EmC
	/N0q3moEf1pHHDO3VPpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugUo-0002WN-S0; Mon, 05 Aug 2019 17:10:06 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugUk-0001dB-Se
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 17:10:04 +0000
Received: by mail-io1-xd44.google.com with SMTP id s7so168692782iob.11
 for <kexec@lists.infradead.org>; Mon, 05 Aug 2019 10:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=018C6jHlTx5pLyIhrEjm9kpmOgEmjnR9kBk7qmzQVkM=;
 b=H6GHYM7hzdKYPL2c+tZTMPNJU+8m2+VmnqBloTMUkI5NH+LGmDItrmwuUYW3z2qsX8
 624aAL4XC0Yq3vNVcF5dvCwZretsO2Uy1UX7NPLM8UmQ3lG8ixxdMHMU+LzcnqfZH2MO
 TwypQXIMwHpbnO1i81xPU+GwzocZRJPpjqFYJ+OJ0+THd4Pyab4Z7bHh3cS4yyDLlcSu
 ivZfijBYylYD9JQs+3isnBJpCotFSDdJ5gZihp8NIvIm7KMn0w5LLhOht7TGr6/7VqzN
 nGnd6yvfOMXo9SRLcHq+Gum9cJcx4st5Uu/hyPXTd0iFAPaFOo4KcJuTgWGscHTXVp4x
 2WrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=018C6jHlTx5pLyIhrEjm9kpmOgEmjnR9kBk7qmzQVkM=;
 b=qk6Bb/jn0nzvhBSBw3PqVTKfNijxVuQVbX6yQZYmQw7jzDReTShS0xrleJC4FtxqtW
 FSkv9aO7pS6/lv03zlkbR+VFK1Xua9AoybkQAuJPQTC26GB9VVPyWTYYopJLYkb/2HkO
 9bP7ZRONJnqXzqvERWosm56jw8bmS+JEcP1TX4SYNbrVllM9hlVNELD0uD54y6OOKp/O
 rQ9P+he0Xu8kUcPXKBLfB8MCakTmf43PC6p/5R3TTEyb1rI3iflgbzOu1krlnQKgIaEb
 G+tnHWULJ49sPsssVtNF9kkEGVguS6KktUnumgEdN5IcmYV1C2R8hoeEJNCZsc+8tBC0
 z+vQ==
X-Gm-Message-State: APjAAAU7Ea8UIPs2aaVFCdkSv/VGu8cO7PYFpsHBn7vvgGoCBKh0AW6Z
 dBLzpM/+FjqTskbXsCDRM7yk02biUYp+KlRwBJ6JSw==
X-Google-Smtp-Source: APXvYqwUIDoOPzK/UGhFLeOEw0eLzgrCZBa6U/bBdYFAisisQYms4Qs0WnkPy0WoviQxJJROLL6VBUpmsq7e/Q4Zjvk=
X-Received: by 2002:a02:cc6c:: with SMTP id
 j12mr109429024jaq.102.1565024994837; 
 Mon, 05 Aug 2019 10:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
From: Matthew Garrett <mjg59@google.com>
Date: Mon, 5 Aug 2019 10:09:43 -0700
Message-ID: <CACdnJusRUnhmOLdowqbGoM9Z-tWsKrhZ8sFfQUUmjyKmRVN+vw@mail.gmail.com>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_101002_937463_84D98204 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: bhsharma@redhat.com, linux-efi <linux-efi@vger.kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 1:36 AM Dave Young <dyoung@redhat.com> wrote:
>
> kexec reboot fails randomly in UEFI based kvm guest.  The firmware
> just reset while calling efi_delete_dummy_variable();  Unfortunately
> I don't know how to debug the firmware, it is also possible a potential
> problem on real hardware as well although nobody reproduced it.
>
> The intention of efi_delete_dummy_variable is to trigger garbage collection
> when entering virtual mode.  But SetVirtualAddressMap can only run once
> for each physical reboot, thus kexec_enter_virtual_mode is not necessarily
> a good place to clean dummy object.

I agree that this isn't necessarily the best place to do this in the
kexec case, but given we control the firmware, figuring out what's
actually breaking seems like a good plan.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
