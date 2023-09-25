
    @if(request()->routeIs('wines.edit'))
        <form action="{{ route('wines.update', $wine->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
    @elseif (request()->routeIs('wines.create'))
        <form action="{{ route('wines.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
    @endif
        <div class="card">
            <div class="card-header">
                <strong>
                @if (request()->routeIs('wines.edit'))
                    Modifier : {{ $wine->name }} ({{ $wine->year }})
                @elseif (request()->routeIs('wines.create'))
                    Ajouter un vin :
                @else
                    {{ $wine->name }} ({{ $wine->year }})
                @endif
                </strong>
            </div>
            <div class="card-body">
                <div class="row gy-3">
                    <div class='col-12'>
                        @if(request()->routeIs('wines.create'))
                            <img id="wineImage" src="{{ asset('/images/default-wine-150.png') }}"" alt="" title="Wine bottle" height="150px"/>
                        @else
                            @if ($wine->source !== "default-wine-150.png")
                                <img id="wineImage" src="{{ asset('/storage/images/' . $wine->source) }}" alt="" title="Wine bottle" height="150px"/>
                            @else
                                <img id="wineImage" src="{{ asset('/images/default-wine-150.png') }}"" alt="" title="Wine bottle" height="150px"/>
                            @endif
                        @endif
                    </div>
                    @if(request()->routeIs('wines.edit') || request()->routeIs('wines.create'))
                        <div class='col-12'>
                            <input type="file" name="source" class="form-control" id="inputGroupFileId" aria-describedby="inputGroupFileUploadId" aria-label="Ajouter image">
                        </div>
                    @endif
                    <div class='col-10'>
                        <label for="inputWineNameId" class="form-label">Nom</label>
                        @if(request()->routeIs('wines.create'))
                            <input type="text" class="form-control" id="inputWineNameId" placeholder="Nom du vin ?" name="name"/>
                        @else
                            <input type="text" class="form-control" id="inputWineNameId" placeholder="Nom du vin ?" name="name" value="{{ $wine->name }}" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}/>
                        @endif

                    </div>
                    <div class='col-2'>
                        <label for="inputWineYearId" class="form-label">Millésime</label>
                        @if(request()->routeIs('wines.create'))
                            <select class="form-select" aria-label="Year ?" id="inputWineYearId" name="year">
                                @for ($i = 1900; $i < (date("Y") + 1); $i++)
                                    <option value="{{ $i }} " {{ $i == date("Y") ? 'selected' : '' }}>{{ $i }}</option>
                                @endfor
                            </select>
                        @else
                            <select class="form-select" aria-label="Year ?" id="inputWineYearId" name="year" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>
                                @for ($i = 1900; $i < (date("Y") + 1); $i++)
                                    <option value="{{ $i }} " {{ $wine->year === $i ? 'selected' : '' }}>{{ $i }}</option>
                                @endfor
                            </select>
                        @endif
                    </div>
                    <div class='col-5'>
                        <label for="inputWineGrapeId" class="form-label">Cépage</label>
                        @if(request()->routeIs('wines.create'))
                            <select class="form-select" aria-label="Cépage ?" id="inputWineGrapeId" name="grape_id">
                                @foreach ($grapes as $grape)
                                    <option value="{{ $grape->id }} " {{ $grape->id === 1 ? 'selected' : '' }}>{{ $grape->name }}</option>
                                @endforeach
                            </select>
                        @else
                            <select class="form-select" aria-label="Cépage ?" id="inputWineGrapeId" name="grape_id" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>
                                @foreach ($grapes as $grape)
                                    <option value="{{ $grape->id }} " {{ $wine->grape_id === $grape->id ? 'selected' : '' }}>{{ $grape->name }}</option>
                                @endforeach
                            </select>
                        @endif
                    </div>
                    <div class='col-5'>
                        <label for="inputWineTypeId" class="form-label">Type</label>
                        @if(request()->routeIs('wines.create'))
                            <select class="form-select" aria-label="Type ?" id="inputWineTypeId" name="type_id">
                                @foreach ($types as $type)
                                    <option value="{{ $type->id }} " {{ $type->id === 1 ? 'selected' : '' }}>{{ $type->name }}</option>
                                @endforeach
                            </select>
                        @else
                            <select class="form-select" aria-label="Type ?" id="inputWineTypeId" name="type_id" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>
                                @foreach ($types as $type)
                                    <option value="{{ $type->id }} " {{ $wine->type_id === $type->id ? 'selected' : '' }}>{{ $type->name }}</option>
                                @endforeach
                            </select>
                        @endif
                    </div>
                    <div class='col-2'>
                        <label for="inputWinePriceId" class="form-label">Prix</label>
                        @if(request()->routeIs('wines.create'))
                            <input type="number" class="form-control" id="inputWinePriceId" placeholder="Prix ?" name="price"/>
                        @else
                            <input type="number" class="form-control" id="inputWinePriceId" placeholder="Prix ?" name="price" value="{{ $wine->price }}" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}/>
                        @endif

                    </div>
                    <div class='col-12'>
                        <label for="textAreaWineDescriptionId" class="form-label">Description</label>
                        @if(request()->routeIs('wines.create'))
                            <textarea class="form-control" id="textAreaWineDescriptionId"  placeholder="Description ?" rows="3" name="description"></textarea>
                        @else
                            <textarea class="form-control" id="textAreaWineDescriptionId"  placeholder="Description ?" rows="3" name="description" {{ request()->routeIs('wines.show') ? 'disabled' : '' }}>{{ $wine->description }}</textarea>
                        @endif
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="col-12">
                    <a class="btn btn-secondary" href="{{ url()->previous() }}">Annuler</a>
                    @if(request()->routeIs('wines.edit'))
                        <button class="btn btn-primary" type="submit">Sauvegarder</button>
                    @elseif(request()->routeIs('wines.create'))
                        <button class="btn btn-primary" type="submit">Ajouter</button>
                    @endif
                </div>
            </div>
        </div>
    @if(request()->routeIs('wines.edit') || request()->routeIs('wines.create'))
    </form>
    @endif

