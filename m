Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D631263BE
	for <lists+kexec@lfdr.de>; Thu, 19 Dec 2019 14:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2YtRBMlb+euIHWZyyqeMmzAuGtys4TvYgkmop/hGm7s=; b=eXdOMWIJhlcH48DHWKH1Dg+LA
	6FpusURIC0nnPLTEvADpWI3kSC82f3W/8YF8rhEJuKLsKCrvI8a7943H+qlfdgqrxJsj/pclnLGVF
	IjeJUlhPe0a3lIu2eysm8cyLXUbM3hX72J/GXNBQzJpwjFmyJccuhPt+QKv11ILqUixcg+xuW3kBH
	rzS15vbIjIMg5rkhvcOCbO0NGaEQzftP2j7S2KnseQW4dt+4CNbAGl3KiE3Q5XzJrEWidCKANgp61
	mAGp2TfGS8bjL+B9rFbLvtxrDYqk2+ltLStnOKGD5HBbjaApWT98TcRmZmN73FJurSGzl5usCMmUo
	DaEGKkKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihw1N-00016e-SZ; Thu, 19 Dec 2019 13:39:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihw1K-00016C-Mz
 for kexec@lists.infradead.org; Thu, 19 Dec 2019 13:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576762753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SwzWlXmBGAQPIF3g3VIYxRxyXgnF5iPCG7v9ZY5QdQM=;
 b=XbiWgFhSCwIU69bUB1rLLj4/mPk5XbScUUwkjZq/cq5JDZq2wCp4TLzK+YombIeEZhguZt
 kK4mn8isERWg+bNSCgXkb1M/GSqZZrMBXXMWSmVV6qirTvPkqMQiLyX+k/D+7ZDwpkkmZg
 BRZPZyq7MPdG4a8sFJGjEEw+Q5f7fCk=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-5MWMWiJLPsKvRledj_G4ow-1; Thu, 19 Dec 2019 08:39:09 -0500
Received: by mail-pj1-f69.google.com with SMTP id k93so3105312pjh.5
 for <kexec@lists.infradead.org>; Thu, 19 Dec 2019 05:39:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QfyDyyQFfSNhatjaN8FMx40dFG7vjvX4KVyJcqFqP7Q=;
 b=UzzcyD5cA6X0HBEohAel1reY9kayeCj/mdvKPuHPSOi5bn5L75HYhjORpJHSajfwXi
 f25SdVBoZysaUo2yG6orWcPTzm/a8KzXMg9HFDyQ0/PtKETI0IGMLDP7PA2vQdTjyZtD
 cxpuBY970RBs2sAnpgd/iszCZWf4Kf2Na9UyouEkz6S8kqk0j1UokhFCGKv3bqkMDBeL
 2DEgRXvAKwYXlcOU/RSZNl3NnwxxXD6eU0JqkgPdBAUSTksk56CwzrQay041cQ2VLGbP
 +m9ei+Ub3C+8WX6SvuLsiCBEEXeGO6ffNAyyvCcNDxO+56T+v6DDM0W1xIZrE5yfeBYF
 neCQ==
X-Gm-Message-State: APjAAAVYTfMBwo14jXeN6KMnp48wrgFlbSf8IzSahvnEdc+j3rYUHtZi
 TgEcHWniHSjPiJ2X1nJupnyP+jWJpAia8gNoKBu6UqCwEi9OOWtYUavGccsN7P6WYVWPOXft/Gi
 s1i5WuFJeUmOsU4grMgwP
X-Received: by 2002:a17:902:70ca:: with SMTP id
 l10mr9145351plt.21.1576762748046; 
 Thu, 19 Dec 2019 05:39:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqxrhippFjphtiaFQc2F8pjBKJydRnVlSmejdcIxDW3BaXs23GkOukB72jpZSlDjUQDNblWbaA==
X-Received: by 2002:a17:902:70ca:: with SMTP id
 l10mr9145320plt.21.1576762747652; 
 Thu, 19 Dec 2019 05:39:07 -0800 (PST)
Received: from localhost.localdomain ([122.177.22.208])
 by smtp.gmail.com with ESMTPSA id u23sm8531227pfm.29.2019.12.19.05.39.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Dec 2019 05:39:06 -0800 (PST)
Subject: Re: [RFC] printing the final constructed kernel command line
To: John Donnelly <john.p.donnelly@oracle.com>,
 Eric DeVolder <eric.devolder@oracle.com>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
 <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
 <8E0B5DF6-C256-4B34-B75B-65BA88ABFC92@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <69dc17e0-6298-02be-f276-f8272d29acc3@redhat.com>
Date: Thu, 19 Dec 2019 19:09:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <8E0B5DF6-C256-4B34-B75B-65BA88ABFC92@oracle.com>
Content-Language: en-US
X-MC-Unique: 5MWMWiJLPsKvRledj_G4ow-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_053914_826686_D9B38F5C 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "bhupesh.linux >> Bhupesh SHARMA" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gMTIvMTkvMjAxOSAxMjo0NiBBTSwgSm9obiBEb25uZWxseSB3cm90ZToKPiAKPiAKPj4gT24g
RGVjIDE4LCAyMDE5LCBhdCAxOjAwIFBNLCBFcmljIERlVm9sZGVyIDxlcmljLmRldm9sZGVyQG9y
YWNsZS5jb20+IHdyb3RlOgo+Pgo+PiBUaGFua3MgQmh1cGVzaCBmb3IgdGhlIGZlZWRiYWNrLCBy
ZXNwb25zZXMgYmVsb3chCj4+IGVyaWMKPj4KPj4gT24gMTIvMTcvMTkgMTo1OSBQTSwgQmh1cGVz
aCBTaGFybWEgd3JvdGU6Cj4+PiBIaSBFcmljLAo+Pj4gT24gMTIvMTcvMjAxOSAwMjowMiBBTSwg
RXJpYyBEZVZvbGRlciB3cm90ZToKPj4+PiBUaGUgLS1jb21tYW5kLWxpbmUsIC0tYXBwZW5kLCBh
bmQgLS1yZXVzZS1jbWRsaW5lIG9wdGlvbnMgdG8ga2V4ZWMgY2FuCj4+Pj4gYmUgdXNlZCBpbiBj
b21iaW5hdGlvbiB0byBjcmFmdCBhIGtlcm5lbCBjb21tYW5kIGxpbmUgZm9yIGEga2VybmVsCj4+
Pj4gbG9hZGVkIHZpYSBrZXhlYy4gSW4gYWRkaXRpb24sIHRoZSBrZXhlYyB0b29sIG1heSBhbHNv
IG1hbmlwdWxhdGUKPj4+PiBmdXJ0aGVyIHRoZSBjb21tYW5kIGxpbmUsIGVnLiAgZWxmY29yZWhk
ciBhZGRpdGlvbi4KPj4+IFRoYW5rcyBmb3IgcHJvcG9zaW5nIHRoaXMgY2hhbmdlLiBJIGhhdmUg
c29tZSBjb21tZW50cy9xdWVyaWVzIChzZWUgYmVsb3cpLgo+Pj4+IFRvIGFpZCBpbiBkZWJ1Z2dp
bmcga2R1bXAva2V4ZWMgcmVsYXRlZCBpc3N1ZXMsIGl0IHdvdWxkIGJlIGhlbHBmdWwKPj4+PiBm
b3Iga2V4ZWMgdG8gcHJpbnQgdGhlIGZpbmFsIGNvbnN0cnVjdGVkIGtlcm5lbCBjb21tYW5kIGxp
bmUgYXJndW1lbnQuCj4+Pj4KPj4+PiBGb3IgZXhhbXBsZSwgdGhlIGZvbGxvd2luZyBzaW1wbGUg
Y2hhbmdlIChmb3IgaTM4Ni94ODZfNjQpOgo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2tleGVjL2Fy
Y2gvaTM4Ni94ODYtbGludXgtc2V0dXAuYyBiL2tleGVjL2FyY2gvaTM4Ni94ODYtbGludXgtc2V0
dXAuYwo+Pj4+IGluZGV4IDA1N2VlMTQuLjZkYzRhZGMgMTAwNjQ0Cj4+Pj4gLS0tIGEva2V4ZWMv
YXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCj4+Pj4gKysrIGIva2V4ZWMvYXJjaC9pMzg2L3g4
Ni1saW51eC1zZXR1cC5jCj4+Pj4gQEAgLTU3LDYgKzU3LDggQEAgdm9pZCBzZXR1cF9saW51eF9i
b290bG9hZGVyX3BhcmFtZXRlcnNfaGlnaCgKPj4+PiAgICAgICAgY2hhciAqY21kbGluZV9wdHI7
Cj4+Pj4gICAgICAgIHVuc2lnbmVkIGxvbmcgaW5pdHJkX2Jhc2UsIGluaXRyZF9hZGRyX21heDsK
Pj4+Pgo+Pj4+ICsgICAgcHJpbnRmKCJGaW5hbCBrZXJuZWwgY21kbGluZTogJyVzJ1xuIiwgY21k
bGluZSk7Cj4+Pj4gKwo+Pj4gSWYgd2Ugd2FudCB0byBhZGQgdGhpcyBmb3IgZGVidWdnaW5nIHB1
cnBvc2VzLCBpdHMgYmV0dGVyIHRvIGhhdmUgZGJncHJpbnRmKCkgaW5zdGVhZCBvZiBwcmludGYo
KSBoZXJlLiBUaGlzIHdpbGwgbWFrZSBzdXJlIHRoYXQgdGhlIGRlYnVnIG1lc3NhZ2UgaXMgcHJp
bnRlZCBvbmx5IHdoZW4gJy1kJyBmbGFnIGlzIHNwZWNpZmllZCB3aGlsZSBjYWxsaW5nIGtleGVj
IHV0aWxpdHkgZnJvbSBjb21tYW5kLWxpbmUuCj4+Cj4+IFllcyEgSSB1c2VkIHByaW50ZigpIG1l
cmVseSB0byBwcm92aWRlIGFuIGV4YW1wbGUgb2Ygd2hhdCBpcyBwb3NzaWJsZS4KPj4KPj4+PiAg
ICAgICAgLyogU2F5IEknbSBhIGJvb3QgbG9hZGVyICovCj4+Pj4gICAgICAgIHJlYWxfbW9kZS0+
bG9hZGVyX3R5cGUgPSBMT0FERVJfVFlQRV9LRVhFQyA8PCA0Owo+Pj4+Cj4+Pj4gcmVzdWx0cyBp
biB0aGUgZm9sbG93aW5nIG9uIGEgc3lzdGVtZC1iYXNlZCBzeXN0ZW0gKGZvcm1hdHRlZCB0byBm
aXQKPj4+PiBpbiA3MCBjaGFyIGxpbmVzKToKPj4+Pgo+Pj4+ICUgc3lzdGVtY3RsIHN0YXR1cyAt
bCBrZHVtcC5zZXJ2aWNlCj4+Pj4g4pePIGtkdW1wLnNlcnZpY2UgLSBDcmFzaCByZWNvdmVyeSBr
ZXJuZWwgYXJtaW5nCj4+Pj4gICAgICBMb2FkZWQ6IGxvYWRlZCAoL3Vzci9saWIvc3lzdGVtZC9z
eXN0ZW0va2R1bXAuc2VydmljZTsgZW5hYmxlZDsKPj4+PiAgICAgICB2ZW5kb3IgcHJlc2V0OiBl
bmFibGVkKQo+Pj4+ICAgICAgQWN0aXZlOiBhY3RpdmUgKGV4aXRlZCkgc2luY2UgTW9uIDIwMTkt
MTItMTYgMTQ6NTk6MjEgRVNUOwo+Pj4+ICAgICAgIDJtaW4gNTNzIGFnbwo+Pj4+ICAgICBQcm9j
ZXNzOiAxNDA1OCBFeGVjU3RvcD0vdXNyL2Jpbi9rZHVtcGN0bCBzdG9wIChjb2RlPWV4aXRlZCwK
Pj4+PiAgICAgIHN0YXR1cz0wL1NVQ0NFU1MpCj4+Pj4gICAgIFByb2Nlc3M6IDE0MDczIEV4ZWNT
dGFydD0vdXNyL2Jpbi9rZHVtcGN0bCBzdGFydCAoY29kZT1leGl0ZWQsCj4+Pj4gICAgICBzdGF0
dXM9MC9TVUNDRVNTKQo+Pj4+ICAgIE1haW4gUElEOiAxNDA3MyAoY29kZT1leGl0ZWQsIHN0YXR1
cz0wL1NVQ0NFU1MpCj4+Pj4KPj4+PiBEZWMgMTYgMTQ6NTk6MTggdm0zNjQga2R1bXBjdGxbMTQw
NThdOiBTdG9wcGluZyBrZHVtcDogW09LXQo+Pj4+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBzeXN0
ZW1kWzFdOiBTdG9wcGVkIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcuCj4+Pj4gRGVjIDE2
IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRbMV06IFN0YXJ0aW5nIENyYXNoIHJlY292ZXJ5IGtlcm5l
bCBhcm1pbmcuLi4KPj4+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBG
aW5hbCBrZXJuZWwgY21kbGluZTogJ0JPT1RfSU1BR0U9Cj4+Pj4gICAgL3ZtbGludXotNC4xNC4z
NS0xOTAyLjcuMy4xLmVsN3Vlay54ODZfNjQgcm8gcmhnYiBxdWlldCBMQU5HPWVuX1VTLlVURi04
Cj4+Pj4gICAgaXJxcG9sbCBucl9jcHVzPTEgcmVzZXRfZGV2aWNlcyBjZ3JvdXBfZGlzYWJsZT1t
ZW1vcnkgbWNlPW9mZiBudW1hPW9mZgo+Pj4+ICAgIHVkZXYuY2hpbGRyZW4tbWF4PTIgcGFuaWM9
MTAgcm9vdGZsYWdzPW5vZmFpbCBhY3BpX25vX21lbWhvdHBsdWcKPj4+PiAgICB0cmFuc3BhcmVu
dF9odWdlcGFnZT1uZXZlciBub2thc2xyIG5vdm1jb3JlZGQgZGlzYWJsZV9jcHVfYXBpY2lkPTAK
Pj4+PiAgICBlbGZjb3JlaGRyPTkwMTQ5MksnCj4+Pj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0IHN5
c3RlbWRbMV06IFN0YXJ0ZWQgQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZy4KPj4+PiBEZWMg
MTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBrZXhlYzogbG9hZGVkIGtkdW1wIGtl
cm5lbAo+Pj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBrZHVtcGN0bFsxNDA3M106IFN0YXJ0aW5n
IGtkdW1wOiBbT0tdCj4+Pj4KPj4+PiBhbmQgdGhlIG91dHB1dCBpcyBhbHNvIGF2YWlsYWJsZSBp
biAvdmFyL2xvZy9tZXNzYWdlcy4KPj4+IFNpbmNlIGtkdW1wY3RsIGlzIGEgZGlzdHJpYnV0aW9u
IHNwZWNpZmljIHNjcmlwdCAoVXNlZCBieSBGZWRvcmEvUkhFTCksIHdoaWNoIGludm9rZXMgJ2tl
eGVjJyB1bmRlciB0aGUgaG9vZCwgd2UgY2FuIGRpc2N1c3MgdGhlIGZlYXR1cmVzIHN1cHBvcnRl
ZCBieSAna2V4ZWMnIHJhdGhlciB0aGFuIHRoZSBkaXN0cmlidXRpb24gc3BlY2lmaWMgc2NyaXB0
cyAoZGlzY3Vzc2lvbiByZWdhcmRpbmcgd2hpY2ggYXJlIHByb2JhYmx5IG1vcmUgc3VpdGVkIHRv
IHRoZSBGZWRvcmEga2V4ZWMgbGlzdDoga2V4ZWNAbGlzdHMuZmVkb3JhcHJvamVjdC5vcmcpCj4+
Cj4+IEFncmVlZCwgdGhpcyBSRkMgaXMgZm9yIGEgY2hhbmdlIHRvIGtleGVjLCBub3RpbmcgdGhh
dCB3cmFwcGVyIHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBhcmUgaW5zdWZmaWNpZW50IHRvIHBy
b3ZpZGUgdGhlIGZ1bmN0aW9uYWxpdHkgcmVxdWVzdGVkLgo+Pgo+Pj4+IFRoZXJlIG1pZ2h0IGFs
c28gYmUgYW4gb3Bwb3J0dW5pdHkgdG8gY29uc29saWRhdGUgaGFuZGxpbmcgb2YgdGhlCj4+Pj4g
a2VybmVsIGNvbW1hbmQgbGluZSwgYXMgbW9zdCBhcmNoIHRhcmdldHMgaGF2ZSB0aGUgLS1jb21t
YW5kLWxpbmUsCj4+Pj4gLS1hcHBlbmQsIGFuZCAtLXJldXNlLWNtZGxpbmUgb3B0aW9ucywgdGhv
dWdoIGVhY2ggYXJjaCBpbmRlcGVuZGVudGx5Cj4+Pj4gY29kZXMgdGhlIHN1cHBvcnQgZm9yIHRo
ZXNlIG9wdGlvbnMuCj4+PiBUaGlzIHNlZW1zIGxpa2UgYSBnb29kIGlkZWEsIG1vcmUgb24gdGhl
IHNhbWUgYmVsb3cgLi4uCj4+Pj4gTm90ZTogU2ltcGx5IHByaW50aW5nIHRoZSBjbWRsaW5lIGlu
IHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBtYXkgbm90Cj4+Pj4gcmVzdWx0IGluIHRoZSBzYW1l
IG9yZGVyaW5nLCBhbmQgd2lsbCBvbWl0IGFueSBhZGRpdGlvbiBtYWRlIGludGVybmFsbHkKPj4+
PiBieSBrZXhlYywgc3VjaCBhcyB0aGUgZWxmY29yZWhkci4KPj4+Pgo+Pj4+IEkgcHJvcG9zZSB0
aGUgYWRkaXRpb24gb2YgYW4gb3B0aW9uIHRvIGtleGVjLCAtLXByaW50LWtjbCAodG8gbWlycm9y
Cj4+Pj4gLS1wcmludC1ja3IpLCB0aGF0IHdvdWxkIGNvbnRyb2wgc3VjaCBwcmludGluZywgYXMg
d2VsbCBhcyB0aGUgbmVlZGVkCj4+Pj4gcGVyIGFyY2ggY29uZGl0aW9uYWwgcHJpbnQgc3RhdGVt
ZW50cyBzaW1pbGFyIHRvIHRoZSBhYm92ZSB0byBwcmludCB0aGUKPj4+PiBmaW5hbCBjb25zdHJ1
Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lLgo+Pj4gLi4uIEkgYW0gbm90IHN1cmUgSSB1bmRlcnN0
YW5kIHRoZSBhYm92ZSBwb2ludC4gTG9va2luZyBhdCB0aGUgbGF0ZXN0IGtleGVjLXRvb2xzIG1h
biBwYWdlIChzZWU6IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vdXRpbHMva2VybmVsL2tl
eGVjL2tleGVjLXRvb2xzLmdpdCksIEkgY291bGRuJ3QgZmluZCAnLS1wcmludC1ja3InIG9wdGlv
bjoKPj4+IC0tcHJpbnQtY2tyLXNpemU6IFByaW50IGNyYXNoIGtlcm5lbCByZWdpb24gc2l6ZSwg
aWYgYXZhaWxhYmxlLgo+Pj4gQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRlIG9uICctLXByaW50LWNr
cicgYW5kICctLXByaW50LWtjbCcgb3B0aW9ucyBtb3JlLgo+Pgo+PiBZb3UgcHJvcG9zZWQgdXNp
bmcgZGJncHJpbnRmKCkgaW4gY29uanVuY3Rpb24gd2l0aCB0aGUgLWQgb3B0aW9uOyBhbmQgdGhh
dCBtYWtlcyBncmVhdCBzZW5zZTsgSSBoYWQgbm90IGluIG15IGVhZ2VybmVzcyB0byBwcm9kdWNl
IHRoaXMgUkZDLgo+Pgo+PiBJbnN0ZWFkLCBJIHByb3Bvc2VkIGFub3RoZXIgb3B0aW9uIC0tcHJp
bnQta2NsIChmb3IgcHJpbnQga2VybmVsIGNvbW1hbmQgbGluZSkgdG8gY29uZGl0aW9uYWxseSBw
cmludCB0aGUgaW5mb3JtYXRpb24uIEkgd2FzIHVzaW5nIC0tcHJpbnQtY2tyIGFzIGFuIGV4YW1w
bGUgb2Ygc2ltaWxhciBvcHRpb24gdXNlZCB0byBwcmludCBpbmZvcm1hdGlvbiAoaW4gdGhpcyBj
YXNlLCB0aGUgY3Jhc2gga2VybmVsIHJlZ2lvbikuIE90aGVyIHRoYW4gYSBzaW1pbGFyIG5hbWlu
ZyBjb252ZW50aW9uLCB0aGVyZSBpcyBubyBjb3JyZWxhdGlvbiBiZXR3ZWVuIC0tcHJpbnQtY2ty
IGFuZCAtLXByaW50LWtjbCwgYW5kIGluZGVlZCBldmVuIC0tcHJpbnQta2NsIG1pZ2h0IGJlIHVu
LW5lY2Vzc2FyeSBnaXZlbiBkYmdwcmludGYoKS4KPj4KPiAKPiAKPiAgICAgIEkgZG9u4oCZdCBz
ZWUgYSBuZWVkIGZvciAtZCA7ICAgIG9yIGV4dHJhIG9wdGlvbnMgOyAgSeKAmWQgbGlrZSB0byBz
ZWUgbWFrZWR1bXBmaWxlIGJlIGEgbGl0dGxlIG1vcmUgdmVyYm9zZSB3aGVuIGl0IHJ1bnMgIHRv
IHNob3cgdGhlIGNvbmZpZ3VyYXRpb24gb3B0aW9ucyBiZWNhdXNlIGl0IGlzIG9mdGVuIHJhbiBp
biB0aW1lcyBvZiBncmVhdCBuZWVkIHRvIGlzb2xhdGUgYSBzeXN0ZW0gIHByb2JsZW0sIGFuZCB0
aGUgbW9yZSBkZXRhaWxzIGF2YWlsYWJsZSAtICB0aGUgYmV0dGVyLgoKVGhlICctZCcgb3B0aW9u
IGFscmVhZHkgZXhpdHMgZm9yIGtleGVjLXRvb2xzLCBzbyB3ZSBkb24ndCBuZWVkIHRvIG1ha2Ug
CmFueSBhZGRpdGlvbmFsIGVmZm9ydC4gbWFrZWR1bXBmaWxlIGlzIGRpZmZlcmVudCBmcm9tIGtl
eGVjLXRvb2xzLCBidXQgCml0IGFsc28gaGFzIGEgJy1kJyBvcHRpb24gZm9yIGVuYWJsaW5nIGRl
YnVnIHByaW50cywgc28ganVzdCBtYWtlIHN1cmUgCnlvdXIgY2FsbGluZyBzY3JpcHQgZm9yIG1h
a2VkdW1wZmlsZS9rZXhlYyBpbnZva2VzIHRoZW0gd2l0aCAnLWQnIG9wdGlvbi4KClRoYW5rcywK
Qmh1cGVzaAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
