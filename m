Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571E0F3988
	for <lists+kexec@lfdr.de>; Thu,  7 Nov 2019 21:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAe8S2OcKvfQrwu6vK94vWdUjS3i0Q2yWw5DGyrrDsQ=; b=MqnCT9bknxh0sZ
	/MDCmpAJ+oSVkt3jxEvRbPeR8XeFq+ls+wrQEqbqCKCWElJrFoIA4lcz1Iaf8GBbPliCH6+d7r5ki
	LlAODVYfE6Mz3Y4Iq/Zh/SFfJxy1ufA1Qh2Us4Y8/MiuA+Iq4/anKaNz9RE4U66W2MdQFhYrA6jZp
	0rZaLmdHsMkp1XeeR3zTApeurtxbrsBX3vAAnVeKD9BpU9rYYkDS+57TaTvExtH/Z5lv8/XlyGPS4
	YFTu5zhAToAXNy+eNKPO5RVcy61mT9RjEs/k/bUKWDXiOs52rIO4JgOu8Sfe5oqSSTNiT/OqeHBqo
	JtKOQNExw5zSQmi4zJFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoS6-0004lT-Qm; Thu, 07 Nov 2019 20:32:22 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoS3-0004ko-3L
 for kexec@lists.infradead.org; Thu, 07 Nov 2019 20:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573158736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IfGa5HGnWcYK+6Fujp9FGfTWGTHihNkuputcumgsEEg=;
 b=IBGYPsvh2hhMhQOREJhZl3BRn5/chuQAm/zLI+f0I6qaw2+C2I0oy6KJSyK0GUIEiL5Wph
 6Vn3GpbiV37IlxlvuyBVOQSrTv1JQUzz4VLJnRkVHsg7UJcl7iomVunsow27sulLqwEUk8
 40XF3oAwrvKf0mbUrbJU0y3m7NYMC38=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-e_vQTBogMemBT2muRRIJdg-1; Thu, 07 Nov 2019 15:32:14 -0500
Received: by mail-lf1-f70.google.com with SMTP id a4so736394lfg.23
 for <kexec@lists.infradead.org>; Thu, 07 Nov 2019 12:32:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IfGa5HGnWcYK+6Fujp9FGfTWGTHihNkuputcumgsEEg=;
 b=bJN2zD6CwFVpfGUZ5Dp492WoGK2KYIjBoHjjq5LVPWJAlHxtEWrNxycoYWJEdLFXhX
 ofl2qogrp8TyS8oBznGWkIScYF5Es1ysla2PJ2jUSZOo7bBZBupv5Z9D1+7rxtHGJAyW
 Jw8o1cj7G4Bdnu6SK252j0yvmLTVH11Vh2E7ubWOJPhpPl2UypKnY4z33WqBmzr3cEFx
 mocQ1/k+XcRQrsNw5vI1D6tsk3mLpTJ8Tl0VVwk27p45HMpTQlPT2pCFtgR19RaXN/8i
 zHXxvzqGUwz1uZcDa2kTlYU3iIJDbCfbwM3Nb2RG96/oFffywBKh8xwNhAlIQtszXWgX
 b5Sg==
X-Gm-Message-State: APjAAAXj7hNhHn4bwzUmocWer/eSKZGO4lmtejnQvCOl8tx/H60ohi0M
 WEgFPuL9oHSiiXagnZpag7fKxiG9Uq1JObkmE7Bv21tGk96VPkRPJB2wZWYHrpT6gFPeg+pRt3o
 H2wiv9e4VWggHsTk7WzoyScK/mFFDtmAHYrWQ
X-Received: by 2002:a19:bec5:: with SMTP id o188mr3803546lff.140.1573158732263; 
 Thu, 07 Nov 2019 12:32:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqyFC+B+UAk3u4Vk2FtDTSTxsWkEv4e2lhzCnE/4irsUPeQed/Ishvs6zQhwSoLd8TGZ+IOxIDauLbftt3AJs6A=
X-Received: by 2002:a19:bec5:: with SMTP id o188mr3803532lff.140.1573158732033; 
 Thu, 07 Nov 2019 12:32:12 -0800 (PST)
MIME-Version: 1.0
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
 <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
 <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 8 Nov 2019 02:01:58 +0530
Message-ID: <CACi5LpNGgMe0vchp73U8eLAYCP5OF_t890WheGdju05uJwP1Jw@mail.gmail.com>
Subject: Re: Makedumpfile help for 5.4.0.rc3 : Arm
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
X-MC-Unique: e_vQTBogMemBT2muRRIJdg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_123219_213977_A85423AC 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgS2F6dSwKClNvcnJ5IEkgaGFkIGEgbG90IG9mIGJhY2stbG9nIHRvIGNsZWFyIGFmdGVyIEkg
cmV0dXJuZWQgZnJvbSBteQpob2xpZGF5cyBhbmQganVzdCBnb3QgdG8gYW5zd2VyaW5nIHRoaXMg
bm93LgoKT24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMjoyMyBBTSBLYXp1aGl0byBIYWdpbyA8ay1o
YWdpb0BhYi5qcC5uZWMuY29tPiB3cm90ZToKPgo+IEhpIEJodXBlc2gsCj4KPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+ID4gSSBhbSB3b3JraW5nIG9uIHRoZSBjaGFuZ2VzIGlu
IHRoZSB2bWNvcmVpbmZvIGFmdGVyIHRoZSA1Mi1iaXQgVkEKPiA+ID4gPiBjaGFuZ2VzIGZyb20g
U3RldmUgd2VyZSBhY2NlcHRlZCBpbiBMaW51eCA1LjQtcmMxICgiU3VwcG9ydCBmb3IgNTItYml0
Cj4gPiA+ID4gdmlydHVhbCBhZGRyZXNzaW5nIGluIGtlcm5lbCBzcGFjZeKAnSkuCj4gPiA+Cj4g
PiA+Cj4gPiA+ICAgIEkgZG9u4oCZdCBzZWUgYSBjb21taXQgd2l0aCB0aGlzIHRpdGxlIGluIGxp
bnV4LXN0YWJsZSAgOyAgQ291bGQgeW91IGJlIGEgbGl0dGxlIG1vcmUgc3BlY2lmaWMgd2hhdAo+
ID4gZmlsZSAgdGhhdCB3YXMgYXBwbGllZCB0byA/Cj4gPgo+ID4gWW91IGNhbiBoYXZlIGEgbG9v
ayBhdCB0aGUgZm9sbG93aW5nIGNvbW1pdCAoYW5kIGRlcGVuZGVuY2llcykgaW4KPiA+IExpbnVz
J3MgdHJlZSAoZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdCkKPiA+IHdoaWNoIGludHJvZHVjZWQgNTItYml0IGtlcm5lbCBWQXMg
Zm9yIGFybTY0IGFyY2hpdGVjdHVyZToKPiA+Cj4gPiBjb21taXQgYjZkMDBkNDdlODFhNDlmNmNm
NDYyNTE4YzEwNDA4ZjM3YTNlNjc4NQo+ID4gQXV0aG9yOiBTdGV2ZSBDYXBwZXIgPHN0ZXZlLmNh
cHBlckBhcm0uY29tPgo+ID4gRGF0ZTogICBXZWQgQXVnIDcgMTY6NTU6MjIgMjAxOSArMDEwMAo+
ID4KPiA+ICAgICBhcm02NDogbW06IEludHJvZHVjZSA1Mi1iaXQgS2VybmVsIFZBcwo+Cj4gVGhh
bmsgeW91IGZvciB3b3JraW5nIG9uIHRoaXMuCj4KPiBJJ3ZlIGFsc28gaGFkIGEgbG9vayBhdCB0
aGVtLCBhbmQgbXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHdlIG5lZWQKPiBpbiB2bWNvcmVpbmZv
IGF0IGxlYXN0Ogo+Cj4gLSBUQ1JfRUwxLlQxU1ogKGFsbW9zdCBlcXVhbHMgdG8gdmFiaXRzX2Fj
dHVhbCkgdG8gZGV0ZXJtaW5lOgo+ICAgbyBQQUdFX09GRlNFVAoKSW5kZWVkLiBUaGVyZSBhcmUg
c2V2ZXJhbCBzbWFsbCBsaXR0bGUgY2hhbmdlcyB3ZSBuZWVkOgoKRm9yIG5vdyBmb3IgQVJNdjgu
Miwgd2UgbmVlZCB0byBleHBvcnQgVENSX0VMMS5UMVNaICh3aGljaCBpbmRpY2F0ZXMKdGhlIHZh
Yml0c19hY3R1YWwpLiBJdCB3aWxsIGJlIHVzZWZ1bCBmb3IgQVJNdjguMwpwb2ludGVyLWF1dGhl
bnRpY2F0aW9uIHN0dWZmIGFzIHdlbGwgKGJ1dCBJIHdpbGwgc2VuZCBpdCBvdXQgbGF0ZXIgYXMK
YSBzZXBhcmF0ZSBwYXRjaHNldCkuCgpUaGUgQVJNIG1haW50YWluZXJzIHN1Z2dlc3QgdG8gZXhw
b3J0IFRDUl9FTDEuVDBTWiBhcyB3ZWxsIChmb3IKaGVscGluZyB3aXRoIDUyLWJpdCB1c2VyLXNw
YWNlIFZBIGFwcGxpY2F0aW9ucyB3b3JraW5nIG9uIG9sZGVyIDQ4LWJpdApWQSBrZXJuZWwpLCBi
dXQgYWdhaW4gSSB0aGluayBpdCB3b3VsZCBiZSBhIHNlcGFyYXRlIChpZiBzdWNoIGEKdXNlLWNh
c2UgYXJpc2VzKSBwYXRjaC4gSSBhbSB0cnlpbmcgdG8gdW5kZXJzdGFuZCBmcm9tIGZlZG9yYSBh
cm02NAp1c2VycyBpZiB0aGV5IHJlYWxseSBoYXZlIHN1Y2ggdXNlLWNhc2VzIHByZXNlbnRseS4K
Cj4gICBvIHdoZXRoZXIgdGhlIGtlcm5lbCBoYXMgdGhlICJmbGlwcGVkIiBsaW5lYXIgbWFwIGFu
ZCB0aGUgb3RoZXJzLgo+ICAgICBXZSBuZWVkIGEgZml4IHRvIF9fcGEoKSB3aXRoIGl0LiAoc2Vl
IHRoZSBwYXRjaCBiZWxvdykKPgo+IC0gUEFfQklUUyBvciBNQVhfUEhZU01FTV9CSVRTIHRvIGRl
dGVybWluZToKPiAgIG8gd2hldGhlciBTUEFSU0VNRU1fRVhUUkVNRSBvciBub3QsIGluIGlzX3Nw
YXJzZW1lbV9leHRyZW1lKCkKPiAgIG8gd2hldGhlciB0aGUga2VybmVsIGhhcyA0OC1iaXQgb3Ig
NTItYml0IFBBIHRvIHN3aXRjaAo+ICAgICB0aGUgY2FsY3VsYXRpb24gb2YgcHRlLXRvLXBhZGRy
LiAodGhpcyBtaWdodCBiZSB1bm5lY2Vzc2FyeT8pCj4KPiBJcyB0aGlzIHJpZ2h0PwoKSW5kZWVk
LgoKPiBBbmQgd3JvdGUgYSB2ZXJ5IGRyYWZ0IHBhdGNoLCB3aGljaCB3b3JrcyBvbiBhIDUuNC1y
YzQga2VybmVsIHRoYXQKPiBJIG1vZGlmaWVkIHRvIGhhdmUgTlVNQkVSKHZhYml0c19hY3R1YWwp
IGFuZCBOVU1CRVIoTUFYX1BIWVNNRU1fQklUUyksCj4gd2l0aCBWQV9CSVRTPTQ4IGNvbmZpZyBv
ciBWQV9CSVRTPTUyIGNvbmZpZyBydW5uaW5nIGluIDQ4LWJpdCBtb2RlLgo+IGh0dHBzOi8vZ2l0
aHViLmNvbS9rLWhhZ2lvL21ha2VkdW1wZmlsZS9jb21taXQvZmQ5ZDg2ZWEwNWIzOGU5ZWRiYjhj
MGFjM2ViZDYxMmQ1ZDQ4NWRmMwo+Cj4gKEkgZG9uJ3QgaW50ZW5kIHRvIGV4cG9ydCB0aGVtIGFz
IHRoZXkgYXJlLCBpdCdzIGp1c3QgZm9yIGFuIGV4cGVyaW1lbnQuCj4gQW5kIG5vIHN1cHBvcnQg
Zm9yIC0tbWVtLXVzYWdlIG9wdGlvbiwgInJlYWwiIDUyLWJpdCBQQSwgYW5kIHNvIG9uLikKPgo+
IEFzIGZvciBNQVhfUEhZU01FTV9CSVRTLCBJIGRvbid0IHN0aWNrIHRvIGV4cG9ydCBpdCBmb3Ig
YWxsIGFyY2hpdGVjdHVyZXMsCj4gYWx0aG91Z2ggSSB0b2xkIHlvdSB0aGF0IGl0IHdvdWxkIGJl
IGJldHRlciB0byBkbyBzbyBpbiB0aGUgcGFzdC4KPiBJZiBpdCdzIGhhcmQgdG8gZG8gc28sIGl0
J3MgZmluZSB3aXRoIG1lIHRvIGV4cG9ydCBpdCBvciBzb21ldGhpbmcgc2ltaWxhcgo+IG9ubHkg
Zm9yIGFybTY0IGZvciBub3cuLgoKVGhhbmtzIGZvciB3b3JraW5nIG9uIHRoZSBjaGFuZ2VzLiBJ
IHRoaW5rIHRoZSBtYWtlZHVtcGZpbGUgY2hhbmdlcwphcmUgcXVpdGUgc2ltcGxlciAob3RoZXIg
dGhhbiB0aGUgLS1tZW0tdXNhZ2Ugb3B0aW9uIHdoaWNoIG1pZ2h0IGJlCmJyb2tlbiBmb3IgdGhl
IDFzdCByb3VuZCBvZiA1Mi1iaXQgY2hhbmdlcyksIGJ1dCB0aGUga2VybmVsIHBhdGNoZXMKd291
bGQgbmVlZCBkaXNjdXNzaW9uIGFuZCBjbG9zdXJlIHdpdGggQVJNIG1haW50YWluZXJzLgoKSSBo
YXZlIGFscmVhZHkgc2VudCBvdXQgYSBjbGVhbnVwIHBhdGNoCjxodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1hcm0ta2VybmVsLzE1NzI5MDQ2MDYtMjc5NjEtMS1naXQtc2VuZC1lbWFpbC1i
aHNoYXJtYUByZWRoYXQuY29tLz4sCndoaWNoIGhhcyBiZWVuIHF1ZXVlZCBmb3IgNS41LCBhcyB0
aGVyZSBpcyBubyBsb25nZXIgYW55IHNjZW5hcmlvCndoZXJlIHVzZXIgVkEgIT0ga2VybmVsIFZB
IHNpemUgZnJvbSBhIGtlcm5lbCBjb25maWd1cmF0aW9uIHAtby12LgoKSSBhbSBkaXNjdXNzaW5n
IGFub3RoZXIgZml4LXVwIHBhdGNoIHdpdGggdGhlIEFSTSBtYWludGFpbmVycyAod2hpY2gKdGhl
eSBiZWxpZXZlIG5lZWRzIG1vcmUgdGVzdGluZykgZm9yIHRoZSA1Mi1iaXQgVkEgY2hhbmdlcyBp
biB0aGUKa2VybmVsIGZvciBhbiBpc3N1ZSBJIGFtIHNlZWluZyBvbiBteSBib2FyZC4gU28sIEkg
d2lsbCBrZWVwCndvcmtpbmcvZGVidWdnaW5nIG9uIHRoaXMgZm9yIG5vdy4KCk15IGN1cnJlbnQg
Y291cnNlIG9mIGFjdGlvbiBpcyB0byBzZW5kIGF0IGxlYXN0IHRoZSBmb2xsb3dpbmcgdHdvCnBh
dGNoZXMgZm9yIGV4cG9ydGluZzoKLSBUQ1JfRUwxLlQxU1ogaW4gdm1jb3JlaW5mbyAoZm9yIEFS
TTY0IEFSQ0gpLAotIGNyYXNoX2NvcmUsIHZtY29yZWluZm86IEFwcGVuZCAnTUFYX1BIWVNNRU1f
QklUUycgdG8gdm1jb3JlaW5mbyAoZm9yCmFsbCBBUkNIcykuCgpTdWJzZXF1ZW50bHkgSSB3aWxs
IHNlbmQgdGhlIG1ha2VkdW1wZmlsZSBwYXRjaGVzIGFzIHdlbGwuCgpJIHdpbGwgQ2MgeW91IGFu
ZCBKb2huIHRvIHRoZSBzYW1lLgoKUmVnYXJkcywKQmh1cGVzaAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8va2V4ZWMK
